#from abc import ABC

#class Dataset(ABC):
class Dataset(object):
  def getFeatures(self): 
    return self.features
  def getLabels(self): 
    return self.labels
