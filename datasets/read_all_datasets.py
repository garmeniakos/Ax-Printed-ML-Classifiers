from datasets.dataset import Dataset
import pandas as pd
#from abc import ABC

BASE_DIR = "./datasets/"

#class Wine(Dataset, ABC):
class read_features_and_labels(Dataset):
  def __init__(self):
    data = pd.read_csv(self.fname,sep=',')
    #self.features = data.drop('Y', axis = 1)
    #self.labels = data['Y']
    self.features = data.iloc[:, :-1].values
    self.labels = data.iloc[:, -1]
    
class RedWine(read_features_and_labels): 
  def __init__(self):
    self.fname = BASE_DIR+'data/wine/wine-red.csv'
    super(RedWine, self).__init__()

class WhiteWine(read_features_and_labels): 
  def __init__(self):
    self.fname = BASE_DIR+'data/wine/wine-white.csv'
    super(WhiteWine, self).__init__()

class Cardio(read_features_and_labels): 
  def __init__(self):
    self.fname = BASE_DIR+'data/cardio/cardio.csv'
    super(Cardio, self).__init__()

class HAC(read_features_and_labels): 
  def __init__(self):
    self.fname = BASE_DIR+'data/hac/hac.csv'
    super(HAC, self).__init__()

class Pendigits(read_features_and_labels): 
  def __init__(self):
    self.fname = BASE_DIR+'data/pendigits/pendigits.csv'
    super(Pendigits, self).__init__()

class Arrhythmia(read_features_and_labels): 
  def __init__(self):
    self.fname = BASE_DIR+'data/arrhythmia/arrhythmia.csv'
    super(Arrhythmia, self).__init__()

class GasID(read_features_and_labels): 
  def __init__(self):
    self.fname = BASE_DIR+'data/gas_sensor/gas_sensor.csv'
    super(GasID, self).__init__()

class Breast_Cancer(read_features_and_labels):
  def __init__(self):
    self.fname = BASE_DIR+'data/breast_cancer/breast-cancer-wisconsin.csv'
    super(Breast_Cancer, self).__init__()

class Vertebral_Column_2C(read_features_and_labels):
  def __init__(self):
    self.fname = BASE_DIR+'data/vertebral/column_2C.csv'
    super(Vertebral_Column_2C, self).__init__()

class Vertebral_Column_3C(read_features_and_labels):
  def __init__(self):
    self.fname = BASE_DIR+'data/vertebral/column_3C.csv'
    super(Vertebral_Column_3C, self).__init__()

class Mammographic(read_features_and_labels):
  def __init__(self):
    self.fname = BASE_DIR+'data/mammographic/mammographic_masses.csv'
    super(Mammographic, self).__init__()

class Balance_Scale(read_features_and_labels):
  def __init__(self):
    self.fname = BASE_DIR+'data/balance-scale/balance-scale.csv'
    super(Balance_Scale, self).__init__()

class Seeds(read_features_and_labels):
  def __init__(self):
    self.fname = BASE_DIR+'data/seeds/seeds.csv'
    super(Seeds, self).__init__()

class Dermatology(read_features_and_labels):
  def __init__(self):
    self.fname = BASE_DIR+'data/dermatology/dermatology.csv'
    super(Dermatology, self).__init__()

