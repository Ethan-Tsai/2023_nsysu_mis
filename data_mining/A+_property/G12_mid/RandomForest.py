import csv
from sklearn.ensemble import RandomForestClassifier
import matplotlib.pyplot as mat

csvfile = open(r"C:\Users\User\Desktop\school\2nd\DataMining\A\test_data.csv")
testfile = list(csv.reader(csvfile))
csvfile.close()

csvfile = open(r"C:\Users\User\Desktop\school\2nd\DataMining\A\train_data.csv")
trainfile = list(csv.reader(csvfile))
csvfile.close()

x_train = [i[:-1] for i in trainfile[1:]]
x_test = [i[:-1] for i in testfile[1:]]
y_train = [i[-1] for i in trainfile[1:]]
y_test = [[i[-1]] for i in testfile[1:]]

randomForestModel = RandomForestClassifier(n_estimators=100)
randomForestModel.fit(x_train, y_train)
predict = randomForestModel.predict(x_train)

print("Accuracy:")
print("Test: ", randomForestModel.score(x_train, y_train))
print("Train: ", randomForestModel.score(x_test, y_test))

features = list(trainfile[0][:-1])
impt = randomForestModel.feature_importances_
impt, features= zip(*sorted(zip(impt,features)))

mat.barh(range(len(features)),impt)
mat.yticks(range(len(features)),features)
mat.xlabel('Importance of Features')
mat.ylabel('Features')
mat.title('Importance of Each Feature')
mat.show()