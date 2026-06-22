# On-sensor Printed Machine Learning Classification via Bespoke ADC and Decision Tree Co-Design

## Description

This repository contains the script `decision_tree_training.py`, which implements a Gini-based training algorithm for machine learning classification. It is designed to work with various datasets and is optimized through a bespoke Analog-to-Digital Converter (ADC) and Decision Tree algorithm co-design.

### Usage

To use the script, execute the following command in your terminal:

```bash
python3 decision_tree_training.py <name_of_dataset> <bitwidth_for_inputs> <Gini_threshold> <max_depth> <min_size>
```


#### Example Command

```bash
python3 decision_tree_training.py Balance_Scale 4 0.03 6 3
```

#### Parameters Explained

- `name_of_dataset`: The dataset on which the Decision Tree will be trained.
- `bitwidth_for_inputs`: The bitwidth for dataset inputs.
- `Gini_threshold`: The threshold for Gini impurity. Acceptable values typically range from 0 to 0.03, varying with dataset complexity.
- `max_depth`: The maximum depth of the Decision Tree, controlling the model complexity.
- `min_size`: The minimum number of samples required to split a node. Helps in balancing the Decision Tree by ensuring both left and right splits contain data.

For more details on the parameters, refer to Section III.C of our documentation.

#### Key Insights

- The optimal training configuration depends on the balance between the aforementioned parameters and the characteristics of the dataset. Achieving the "optimal" trained Decision Tree requires a holistic exploration of these parameters.
- The script not only trains the Decision Tree but also calculates the area and power requirements for both the baseline and the approximate Decision Trees. These calculations are based on lookup tables from the EGFET library. Note that the cost of the digital circuit is not included in these calculations.


#### Output example:

```bash
Total power of baseline: 589.56
Total area of baseline: 1.12

Total power of approx: 486.89
Total area of approx: 1.056 

Approximate Decision Tree structure:

X1 < 0.250
Left:
  |X2 < 0.250
  |Left:
  |  |X3 < 0.750
  |  |Left:
  |  |  |X0 < 0.500
  |  |  |Left:
  |  |  |  |X3 < 0.250
  |  |  |  |Left:
  |  |  |  |  |0.0
  |  |  |  |Right:
  |  |  |  |  |1.0
  |  |  |Right:
  |  |  |  |X0 < 0.750
  |  |  |  |Left:
  |  |  |  |  |0.0
  |  |  |  |Right:
  |  |  |  |  |X1 < 0.000
  |  |  |  |  |Left:
  |  |  |  |  |  |0.0
  |  |  |  |  |  |  |
  |  |  |  |  |  |  |
  ...

Max_depth:  6
Min_size:  3
Input bits:  4
Comparators of baseline:  60
Comparators of approx:  33
Gini threshold:  0.03
Unique Indexes of baseline:  4
Unique Indexes of approx:  4
Accurate Accuracy: 77.660%
Approx Accuracy:   77.128%


``` 
