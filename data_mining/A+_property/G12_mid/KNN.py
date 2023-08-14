import pandas as pd
from math import sqrt , pow
K_VALUE  = 7

def auto_norm_data(target, max_v, min_v):
    return (target - min_v) / (max_v - min_v)
def dist(train, test):
    sum_dist = 0
    for i in range(len(test)):
        sum_dist +=  pow((train[i] - test[i]),2)
    return sqrt(sum_dist)

def min_idx(n, arr):
    list_rtn = [x for x in range(n)]
    for i in range(n, len(arr)):
        for j in range(n):
            if arr[i] < arr[list_rtn[j]]:
                list_rtn.insert(j, i)
                del list_rtn[n]
                break
    return list_rtn

def classify(outcome_list):
    outcome_1 = outcome_list.count(1)
    outcome_0 = outcome_list.count(0)
    #按標簽數量投票分類
    return  [1 if outcome_1 >= outcome_0 else 0]

train_data_a = pd.read_csv("C://Users//josep//Desktop//data_mining//train_data_a.csv", encoding="big5")
test_data_a = pd.read_csv("C://Users//josep//Desktop//data_mining//test_data_a.csv", encoding="big5")
train_data_b = pd.read_csv("C://Users//josep//Desktop//data_mining//train_data_b.csv", encoding="big5")
test_data_b = pd.read_csv("C://Users//josep//Desktop//data_mining//test_data_b.csv", encoding="big5")

feature = ["Pregnancies", "Glucose", "BloodPressure", "SkinThickness", "Insulin", "BMI", "DiabetesPedigreeFunction", "Age"]
#將數據轉換成list
list_train_a = [list(train_data_a[x]) for x in feature]
list_test_a = [list(test_data_a[x]) for x in feature]
list_train_b = [list(train_data_b[x]) for x in feature]
list_test_b = [list(test_data_b[x]) for x in feature]

#歸一化
for i in range(8):
    max_train_a = max(list_train_a[i])
    min_train_a = min(list_train_a[i])
   
    for j in range(len(list_train_a[i])):
        list_train_a[i][j] = auto_norm_data( list_train_a[i][j], max_train_a, min_train_a)
    
    for j in range(len(list_test_a[i])):
        list_test_a[i][j] = auto_norm_data( list_test_a[i][j], max_train_a, min_train_a)
for i in range(8):
    max_train_b = max(list_train_b[i])
    min_train_b = min(list_train_b[i])
    for j in range(len(list_train_b[i])):    
            list_train_b[i][j] = auto_norm_data( list_train_b[i][j], max_train_b, min_train_b)
    for j in range(len(list_test_b[i])):        
        list_test_b[i][j] = auto_norm_data( list_test_b[i][j], max_train_b, min_train_b)
#方便查看數據
""""
new_train = pd.DataFrame({feature[x]:list_train_a[x] for x in range(8)})
new_test = pd.DataFrame({feature[x]:list_test_a[x] for x in range(8)})
print(new_train.head())
print(new_test.head())
"""
#切割數據
single_train_a = [[list_train_a[x][y] for x in range(8)] for y in range(len(list_train_a[0]))]
single_test_a = [[list_test_a[x][y] for x in range(8)] for y in range(len(list_test_a[0]))]
single_train_b = [[list_train_b[x][y] for x in range(8)] for y in range(len(list_train_b[0]))]
single_test_b = [[list_test_b[x][y] for x in range(8)] for y in range(len(list_test_b[0]))]

final_list_a = []
final_list_b = []
for i in range(len(single_test_a)):
    #計算距離
    arr_dist = []
    for j in range(len(single_train_a)):
        arr_dist = arr_dist + [dist(single_train_a[j], single_test_a[i])]
    
    #尋找K個最近距離
    idx_list = min_idx(K_VALUE, arr_dist)   
    #記錄最近的K個標簽
    outcome_list = [train_data_a["Outcome"][idx_list[x]] for x in range(K_VALUE)]
    #按標簽數量投票分類
    final_list_a = final_list_a + [classify(outcome_list)]
for i in range(len(single_test_b)):
    #計算距離
    arr_dist = []
    for j in range(len(single_train_b)):
        arr_dist = arr_dist + [dist(single_train_b[j], single_test_b[i])]
    
    #尋找K個最近距離
    idx_list = min_idx(K_VALUE, arr_dist)   
    #記錄最近的K個標簽
    outcome_list = [train_data_b["Outcome"][idx_list[x]] for x in range(K_VALUE)]
    #按標簽數量投票分類
    final_list_b = final_list_b + [classify(outcome_list)]
current_a = 0;
current_b = 0;
#計算準確率
for i in range(len(single_test_a)):
    if final_list_a[i] == test_data_a["Outcome"][i]:
        current_a = current_a + 1;
for i in range(len(single_test_b)):
    if final_list_b[i] == test_data_b["Outcome"][i]:
        current_b = current_b + 1;        
print("Accuracy of A : %.2f%%" % (current_a/len(single_test_a)*100))
print("Accuracy of B : %.2f%%" % (current_b/len(single_test_b)*100))