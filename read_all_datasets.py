from dataset import Dataset
import pandas as pd
#from abc import ABC



#class Wine(Dataset, ABC):
class read_features_and_labels(Dataset):
  def __init__(self):
    data = pd.read_csv(self.fname,sep=';')
    self.features = data.drop('Y', axis = 1)
    self.labels = data['Y']
    
class RedWine(read_features_and_labels): 
  def __init__(self):
    self.fname = 'redwine/dataset.csv'
    super(RedWine, self).__init__()

class WhiteWine(read_features_and_labels): 
  def __init__(self):
    self.fname = 'whitewine/dataset.csv'
    super(WhiteWine, self).__init__()

class Cardio(read_features_and_labels): 
  def __init__(self):
    self.fname = 'cardio/dataset.csv'
    super(Cardio, self).__init__()

class Pendigits(read_features_and_labels): 
  def __init__(self):
    self.fname = 'pendigits/dataset.csv'
    super(Pendigits, self).__init__()

