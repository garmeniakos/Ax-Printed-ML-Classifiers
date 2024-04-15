import sys
from sklearn.model_selection import train_test_split
from joblib import dump, load
from datasets.read_all_datasets import *

from sklearn.metrics import accuracy_score
from sklearn.preprocessing import StandardScaler, LabelEncoder, MinMaxScaler

import numpy as np
import math



dataset = sys.argv[1]
mfile = sys.argv[2]

if dataset in ['RedWine']:
    data = RedWine()
elif dataset in ['WhiteWine']:
    data = WhiteWine()
elif dataset in ['Cardio']:
    data = Cardio()
elif dataset in ['Pendigits']:
    data = Pendigits()
else: assert(False)


X = data.getFeatures()
y = data.getLabels()
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 0.3, random_state = 42)

scaler = MinMaxScaler(feature_range=(0,1))
scaler.fit(X_train)

X_train = scaler.transform(X_train)
X_test =  scaler.transform(X_test)

model = load(mfile)

pred=model.predict(X_test)
isRegr="False"
if "MLPRegressor" or "SVR" in str(type(model)):
        pred=np.clip(np.round(pred),min(y_test),max(y_test))
print("FP ACCURACY W/ MODEL:", accuracy_score(pred, y_test))
