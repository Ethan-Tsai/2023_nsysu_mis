import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.impute import SimpleImputer
from sklearn.neighbors import KNeighborsClassifier
from sklearn.cluster import KMeans
from sklearn.metrics import accuracy_score
from sklearn.preprocessing import MinMaxScaler
import copy
from collections import Counter
from math import sqrt, pow 
import random as rd
# 读取训练数据文件
train_data = pd.read_csv(r"C:\Users\josep\Desktop\data_mining\P2\train_data.csv", header=None)
train_label = pd.read_csv(r"C:\Users\josep\Desktop\data_mining\P2\train_label.csv", header=None)

# 分割特征和标签
X_train = train_data.values
y_train = train_label.values.ravel()

# 读取测试数据文件
test_data = pd.read_csv(r"C:\Users\josep\Desktop\data_mining\P2\test_data.csv", header=None)
test_label = pd.read_csv(r"C:\Users\josep\Desktop\data_mining\P2\test_label.csv", header=None)

# 分割特征和标签
X_test = test_data.values
y_test = test_label.values.ravel()


# 篩選異常值
def filter_outliers(data, threshold=3):
    if data.dtype == 'float64':
        mean = np.mean(data)
        std = np.std(data)
        lower_bound = mean - threshold * std
        upper_bound = mean + threshold * std
        filtered_data = np.where(np.logical_or(data < lower_bound, data > upper_bound), np.nan, data)
    else:
        filtered_data = data
    return filtered_data

# 遍歷每個特徵，篩選異常值
for i in range(X_train.shape[1]):
    X_train[:, i] = filter_outliers(X_train[:, i])
    X_test[:, i] = filter_outliers(X_test[:, i])


imputer = SimpleImputer(strategy='mean')

# 处理训练数据的缺失值
X_train = imputer.fit_transform(X_train)

# 处理测试数据的缺失值
X_test = imputer.transform(X_test)


# 歸一化訓練數據和測試數據
scaler = MinMaxScaler()
X_train = scaler.fit_transform(X_train)
X_test = scaler.transform(X_test)

# 创建KNN分类器模型
knn = KNeighborsClassifier(n_neighbors=7)

# 训练模型
knn.fit(X_train, y_train)

# 进行预测
predictions = knn.predict(X_test)

# 获取K个邻居样本的标签
neighbors_labels = knn.predict_proba(X_test)

# 设置阈值
threshold = 0.8

filtered_samples = []
filtered_samples_indices = []
for i in range(len(X_test)):
    max_prob = np.max(neighbors_labels[i])
    if max_prob < threshold:
        filtered_samples.append(X_test[i])
        filtered_samples_indices.append(i)

print("未知標籤數量: ", len(filtered_samples))


def randomCentroid(k,dataset):
    centroids = rd.sample(dataset,k)
    return centroids

def euclidean(a,b):
    a_len=len(a)
    total=0
    for i in range(a_len):
        total+=pow(a[i]-b[i],2)
    return sqrt(total)

def clustering(dataset, centroids,k):
    tmp=[]
    for i in range (k):
        tmp.append([])

    for i in range(len(dataset)):
        length=[]
        for j in range(k):
            length+=[euclidean(dataset[i],centroids[j])]
        min_index=0
        min_len=min(length)
        for j in range(k):
            if(length[j]==min_len):min_index=j;break;
        tmp[min_index]+=[dataset[i]]
    
    return tmp

def findNewCentroids(dataset):
    newcen=[]
    for i in range(len(dataset)):
        total=copy.copy(dataset[i][0])
        for k in range(len(dataset[i][0])):
            for j in range(1,len(dataset[i])):
                total[k]+=dataset[i][j][k]
            total[k] /= len(dataset[i])
        newcen += [total]
    return newcen
  
def kMeansClustering(dataset, k, iteration=100):

    centers = randomCentroid(k, dataset)
    result = clustering(dataset, centers,k)

    for i in range(iteration):
        centers = findNewCentroids(result)
        result = clustering(dataset,centers,k)
    return result

tmp_xx = filtered_samples
spec_data=[]
list_x_test = []
for i in X_test:
    list_x_test.append(i.tolist())
for i in tmp_xx:
    spec_data.append(list(i)) 

result = kMeansClustering(spec_data,5, 100)
list_dd = []
for i in range(len(result)):
    list_index=[]
    for j in result[i]:
        list_index += [list_x_test.index(j)]
    list_dd.append([y_test[x]  for x in list_index])      
list_tag=[]
for i in list_dd:
    counter = Counter(i)
    most_common = counter.most_common(1)
    list_tag.append(most_common[0][0])
for i in range(len(result)):
    for j in result[i]:
       X_train = np.vstack([X_train, j])
for i in range(len(result)):
    for j in range(len(result[i])):
        y_train = np.append(y_train, list_tag[i])




knn.fit(X_train, y_train)
predictions = knn.predict(X_test)
score = accuracy_score(y_test, predictions)

#score = knn.score(X_test, y_test)
print("score: ", score)