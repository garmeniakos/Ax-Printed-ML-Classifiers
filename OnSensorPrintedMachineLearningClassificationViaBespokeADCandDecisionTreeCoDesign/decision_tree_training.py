# CART on the Bank Note dataset
from random import seed
from random import randrange
from csv import reader
from sklearn.preprocessing import MinMaxScaler
from sklearn.tree import export_text
from sklearn.tree import DecisionTreeClassifier
from datasets.read_all_datasets import RedWine, WhiteWine, Cardio, HAC, Pendigits, Arrhythmia, GasID, Breast_Cancer, Vertebral_Column_2C, Vertebral_Column_3C, Mammographic, Balance_Scale, Seeds, Dermatology
import numpy as np
from collections import Counter
import json
import os
import math
import joblib
import sys
import itertools
from sklearn.model_selection import train_test_split

np.set_printoptions(threshold=np.inf)


data = sys.argv[1]
dataf = data
input_bits = int(sys.argv[2])
threshold = float(sys.argv[3])

max_depth = int(sys.argv[4])
min_size = int(sys.argv[5])


if data in ['RedWine']:
  data = RedWine()
elif data in ['WhiteWine']:
  data = WhiteWine()
elif data in ['Cardio']:
  data = Cardio()
elif data in ['Arrhythmia']:
  data = Arrhythmia()
elif data in ['Pendigits']:
  data = Pendigits()
elif data in ['Breast_Cancer']:
  data = Breast_Cancer()
elif data in ['Vertebral_Column_2C']:
  data = Vertebral_Column_2C()
elif data in ['Vertebral_Column_3C']:
  data = Vertebral_Column_3C()
elif data in ['Mammographic']:
  data = Mammographic()
elif data in ['Balance_Scale']:
  data = Balance_Scale()
elif data in ['Seeds']:
  data = Seeds()


# global initialization of required comparators
comparators = 0
comparators_b = 0
comparators_ax = 0

# Load a CSV file
def load_csv(filename):
        file = open(filename, "rt")
        lines = reader(file)
        dataset = list(lines)
        return dataset

# Convert string column to float
def str_column_to_float(dataset, column):
        for row in dataset:
                row[column] = float(row[column].strip())

        
def print_decision_tree(node, indent=''):
    global comparators 
    if isinstance(node, dict):
        comparators+= 1        
        # Print the current node's condition
        print(indent + 'X{} < {:.3f}'.format(node['index'], node['value']))

        # Print the left child
        print(indent + 'Left:')
        print_decision_tree(node['left'], indent + '  |')

        # Print the right child
        print(indent + 'Right:')
        print_decision_tree(node['right'], indent + '  |')
    else:
        # Print the terminal node's value
        print(indent + str(node))        


# Calculate accuracy percentage
def accuracy_metric(actual, predicted):
        correct = 0
        for i in range(len(actual)):
                if actual[i] == predicted[i]:
                        correct += 1
        return correct / float(len(actual)) * 100.0

def evaluate_algorithm(dataset, algorithm, n_folds, *args):
    global input_bits
    scores1 = list()
    scores2 = list()
    train_set, test_set = train_test_split(dataset, test_size=0.3, random_state=42)

    # Normalize train_set and test_set using MinMaxScaler
    scaler = MinMaxScaler(feature_range=(0, 1))
    train_data = [row[:-1] for row in train_set]
    train_labels = [row[-1] for row in train_set]
    test_data = [row[:-1] for row in test_set]
    train_data_normalized = scaler.fit_transform(train_data)
    test_data_normalized = scaler.transform(test_data)

    for row in train_data_normalized:
        for i in range(len(row)):
            row[i] = (1/2**input_bits) * int(round(2**input_bits*row[i]))

    for row in test_data_normalized:
        for i in range(len(row)):
            row[i] = (1/2**input_bits) * int(round(2**input_bits*row[i]))

    train_set_normalized = [list(train_data_normalized[i]) + [train_labels[i]] for i in range(len(train_data_normalized))]
    test_set_normalized = [list(test_data_normalized[i]) + [None] for i in range(len(test_data_normalized))]

    predicted1, predicted2, tree, tree2 = algorithm(train_set_normalized, test_set_normalized, *args)
    actual = [row[-1] for row in test_set]
    accuracy1 = accuracy_metric(actual, predicted1)
    accuracy2 = accuracy_metric(actual, predicted2)
    scores1.append(accuracy1)
    scores2.append(accuracy2)

    return scores1, scores2, tree, tree2


# Split a dataset based on an attribute and an attribute value
def test_split(index, value, dataset):
        left, right = list(), list()
        for row in dataset:
                if (row[index] < value):
                        left.append(row)
                else:
                        right.append(row)
        return left, right

# Calculate the Gini index for a split dataset
def gini_index(groups, classes):
        # count all samples at split point
        n_instances = float(sum([len(group) for group in groups]))
        # sum weighted Gini index for each group
        gini = 0.0
        for group in groups:
                size = float(len(group))
                # avoid divide by zero
                if size == 0:
                        continue
                score = 0.0
                # score the group based on the score for each class
                for class_val in classes:
                        p = [row[-1] for row in group].count(class_val) / size
                        score += p * p
                # weight the group score by its relative size
                gini += (1.0 - score) * (size / n_instances)
        return gini

def custom_score(group):
    # Calculate the average value of elements in the group
    average_value = sum(group) / len(group)

    # Apply a linear transformation to convert the average value to the custom score
    custom_score = 1 - average_value

    return custom_score


global_array = []
average_values = []
average_values_base = []
index_sim = []
index_sim_base = []

# Select the best split point for a dataset
def get_split(dataset):
    global global_array, threshold, index_sim_base, average_values_base
    best_splits = []
    class_values = list(set(row[-1] for row in dataset))
    b_index, b_value, b_score, b_groups = 999, 999, 999, None
    for index in range(len(dataset[0])-1):
        for row in dataset:
             groups = test_split(index, row[index], dataset)
             gini = gini_index(groups, class_values)
             if gini < b_score:
                 b_index, b_value, b_score, b_groups = index, row[index], gini, groups

    for index in range(len(dataset[0])-1):
        for row in dataset:
             groups = test_split(index, row[index], dataset)
             gini = gini_index(groups, class_values)
             if gini == b_score:
                 best_splits.append([index, row[index], gini])

    global_array.append(best_splits)
    index_sim_base.append(b_index)
    average_values_base.append(b_value)

    return {'index':b_index, 'value':b_value, 'groups':b_groups}

glob_indx = []
def get_split_check(dataset):

        global glob_indx, threshold
        global index_counts, index_sim, average_values
        class_values = list(set(row[-1] for row in dataset))
        best_splits = []  # 2-dimensional array to store the selected splits
        b_groups, b_value, found, b_score, b_index = None, 0, 0, 999, 999
        max_value = float('-inf')
        found = 0
        # find pairs with the best gini score
        for index in range(len(dataset[0])-1):
        #for index, count in sorted(index_counts.items(), key=lambda x: x[1], reverse=True):
                for row in dataset:
                        groups = test_split(index, row[index], dataset)
                        gini = gini_index(groups, class_values)
                        if gini < b_score:
                                b_score = gini

        # find pairs with highest index, best gini score and as maximum as possible value
        for index, count in sorted(index_counts.items(), key=lambda x: x[1], reverse=True):
                if found == 0:
                        glob_indx.append(index)
                else:
                        break
                minim = 999
                for row in dataset:
                        groups = test_split(index, row[index], dataset)
                        gini = gini_index(groups, class_values)
                        #if gini == b_score:
                        if gini - threshold <= b_score and (index in glob_indx):
                                if (row[index]) < minim:
                                        minim = row[index]
                                        found = 1
                                        b_index, b_value, b_score, b_groups = index, row[index], gini, groups

        index_sim.append(b_index)
        average_values.append(b_value)

        if b_groups == None:
            print("b_groups = None")

        return {'index':b_index, 'value':b_value, 'groups':b_groups}


global index_counts
def modify_split(arrays):

        global index_counts
        # Get a set of unique indexes from all arrays
        unique_indexes = set(index for arr in arrays for index, *_ in arr)
         
        # Count how many times each unique index appears in different arrays
        index_counts = Counter(index for index in unique_indexes for arr in arrays if any(subarr[0] == index for subarr in arr))
        
        selected_pairs = []  # To store the selected index-value pairs
        
        # Iterate over the arrays to find the pairs
        for arr in arrays:
            for index, count in sorted(index_counts.items(), key=lambda x: x[1], reverse=True):
                 max_value_pair = None
                 max_value = float('-inf')
                 for subarr in arr:
                     if subarr[0] == index and subarr[1] > max_value: 
                         max_value_pair = subarr[:3]
                         max_value = subarr[1]
                 if max_value_pair is not None:
                     selected_pairs.append(max_value_pair)
                     break
        return selected_pairs


# Create a terminal node value
def to_terminal(group):
        outcomes = [row[-1] for row in group]
        leaf_value = max(set(outcomes), key=outcomes.count)
        #print("Leaf Node Value:", leaf_value)
        return leaf_value


# Create child splits for a node or make terminal
def split_orig_check(node, max_depth, min_size, depth):
        left, right = node['groups']
        del(node['groups'])
        # check for a no split
        if not left or not right:
                node['left'] = node['right'] = to_terminal(left + right)
                return
        # check for max depth
        if depth >= max_depth:
                node['left'], node['right'] = to_terminal(left), to_terminal(right)
                return


        # process left child
        if len(left) <= min_size:
                node['left'] = to_terminal(left)
        else:
                node['left'] = get_split_check(left)
                split_orig_check(node['left'], max_depth, min_size, depth+1)

        # process right child
        if len(right) <= min_size:
                node['right'] = to_terminal(right)
        else:
                node['right'] = get_split_check(right)
                split_orig_check(node['right'], max_depth, min_size, depth+1)


# Create child splits for a node or make terminal
def split_orig(node, max_depth, min_size, depth):
        left, right = node['groups']
        del(node['groups'])
        # check for a no split
        if not left or not right:
                node['left'] = node['right'] = to_terminal(left + right)
                return
        # check for max depth
        if depth >= max_depth:
                node['left'], node['right'] = to_terminal(left), to_terminal(right)
                return


        # process left child
        if len(left) <= min_size:
                node['left'] = to_terminal(left)
        else:
                node['left'] = get_split(left)
                split_orig(node['left'], max_depth, min_size, depth+1)

        # process right child
        if len(right) <= min_size:
                node['right'] = to_terminal(right)
        else:
                node['right'] = get_split(right)
                split_orig(node['right'], max_depth, min_size, depth+1)


# Build a decision tree
def best_gini_params(train, max_depth, min_size):
        global global_array, index_sim_base
        global_array = []
        arrays = []
        root_temp = get_split(train) # Get parameters from all the best gini scores (root)
        
        arrays_nodes = split_orig(root_temp, max_depth, min_size, 1) # Get original parameters from all the best gini scores (nodes)

        global_array = modify_split(global_array) # Parse our new parameters for each node (#arrays = #comparators/nodes)
        return root_temp

# Build a decision tree
def build_tree(train, max_depth, min_size):
        arrays = []
        global global_array, glob_indx
        
        root_temp = get_split_check(train)
        arrays_nodes = split_orig_check(root_temp, max_depth, min_size, 1)

        return root_temp

# Make a prediction with a decision tree
def predict(node, row):
        if row[node['index']] < node['value']:
                if isinstance(node['left'], dict):
                        return predict(node['left'], row)
                else:
                        return node['left']
        else:
                if isinstance(node['right'], dict):
                        return predict(node['right'], row)
                else:
                        return node['right']


# Function to load index and values into the tree object
def load_values_into_tree(tree, values):
    if isinstance(tree, dict):
        if 'left' in tree:
            load_values_into_tree(tree['left'], values)
        else:
            tree['left'] = {'index': values.pop(0)[0], 'value': values.pop(0)[1]}
        if 'right' in tree:
            load_values_into_tree(tree['right'], values)
        else:
            tree['right'] = {'index': values.pop(0)[0], 'value': values.pop(0)[1]}

    return tree

# Classification and Regression Tree Algorithm
def decision_tree(train, test, max_depth, min_size):
        tree = best_gini_params(train, max_depth, min_size)
        tree2 = build_tree(train, max_depth, min_size)

        # Initialize an empty array to store the pairs
        pairs_array = []
        # Initialize the total power
        total_power = 0
        # Process the pairs in the sample data
        total_power = process_pairs([tree], pairs_array, total_power)
        print("Total power of baseline:", total_power)
        # Count the pairs for each unique index
        index_counts = {}
        total_area = 0
        for index, value in pairs_array:
            if index in index_counts:
                index_counts[index] += 1
            else:
                index_counts[index] = 1
        for index, count in index_counts.items():
            total_area += lookup_table_area[count]
        print("Total area of baseline:", total_area)



        pairs_array = []
        total_power = 0
        total_power = process_pairs([tree2], pairs_array, total_power)
        print("Total power of approx:", total_power)
        # Count the pairs for each unique index
        index_counts = {}
        total_area = 0
        for index, value in pairs_array:
            if index in index_counts:
                index_counts[index] += 1
            else:
                index_counts[index] = 1
        for index, count in index_counts.items():
            total_area += lookup_table_area[count]
        print("Total area of approx:", total_area, "\n")


        global comparators_ax, comparators, comparators_b
        print("Approximate Decision Tree structure:\n")
        print_decision_tree(tree2)
        comparators_ax = comparators
        comparators = 0
        print("\nBaseline Decision Tree structure:\n")        
        print_decision_tree(tree)
        print("\n")
        comparators_b = comparators

        predictions1 = list()
        for row in test:
                prediction1 = predict(tree, row)
                predictions1.append(prediction1)

        predictions2 = list()
        for row in test:
                prediction2 = predict(tree2, row)
                predictions2.append(prediction2)
        return predictions1, predictions2, tree, tree2

def pairwise_dissimilarity(array):
    n = len(array)
    pairwise_diff_sum = sum(abs(array[i] - array[j]) for i, j in itertools.combinations(range(n), 2))
    pairwise_dissimilarity = pairwise_diff_sum / (n * (n - 1) / 2)
    return pairwise_dissimilarity

def average_height(array):
    total = sum(array)
    count = len(array)
    average = total / count
    return average


# Power (uW) of pruned 1-output 4-bit ADC for each output digit (see Fig.3 of the paper)
lookup_table_power = {
    0:0,
    1:8.235,
    2:10.41,
    3:12.88,
    4:15.66,
    5:18.7,
    6:21.97,
    7:25.43,
    8:29.06,
    9:32.84,
    10:36.75,
    11:40.77,
    12:44.9,
    13:49.12,
    14:53.41,
    15:57.77,
    16:57.77
}

# Area (mm^2) of N-output 4-bit ADCs (see Fig.3 of the paper)
lookup_table_area = {
    1:0.176,
    2:0.208,
    3:0.24,
    4:0.272,
    5:0.304,
    6:0.336,
    7:0.368,
    8:0.4,
    9:0.432,
    10:0.464,
    11:0.496,
    12:0.528,
    13:0.56,
    14:0.592,
    15:0.624
}

def process_pairs(data, power_array, total_power):
    for item in data:
        if isinstance(item, dict) and 'index' in item and 'value' in item:
            index = item['index']
            value = item['value']

            if (index, value) not in power_array:
                power_array.append((index, value))
                total_power += lookup_table_power[int(2**4 * value)]

        if isinstance(item, dict):
            total_power = process_pairs(item.values(), power_array, total_power)

        if isinstance(item, list):
            for subitem in item:
                total_power = process_pairs([subitem], power_array, total_power)

    return total_power


seed(1)
# load and prepare data
dataset = load_csv(data.fname)
# convert string attributes to integers
for i in range(len(dataset[0])):
       str_column_to_float(dataset, i)


n_folds = 1
comparators = 0

#evaluate algorithm
scores1, scores2, tree, tree2 = evaluate_algorithm(dataset, decision_tree, n_folds, max_depth, min_size)

# Save Decision Tree models
filename_base = os.path.join("./", str(dataf) + "_DT_base.joblib")
filename_approx = os.path.join("./", str(dataf) + "_DT_approx.joblib")
joblib.dump(tree, filename_base)
joblib.dump(tree2, filename_approx)


print("Max_depth: ", max_depth)
print("Min_size: ", min_size)
print("Input bits: ", input_bits)
print("Comparators of baseline: ", comparators_b)
print("Comparators of approx: ", comparators_ax)
print("Gini threshold: ", threshold)

unique_numbers_set = set(index_sim_base)
num_unique_numbers = len(unique_numbers_set)
print("Unique Indexes of baseline: ", num_unique_numbers)

unique_numbers_set = set(index_sim)
num_unique_numbers = len(unique_numbers_set)
print("Unique Indexes of approx: ", num_unique_numbers)

print('Accurate Accuracy: %.3f%%' % (sum(scores1)/float(len(scores1))))
print('Approx Accuracy:   %.3f%%\n' % (sum(scores2)/float(len(scores2))))





