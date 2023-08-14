library(ggplot2)
library(dplyr)
library(stats)
test <- read.csv("./student-mat.csv")

#1.#看看資料集中有無上幼稚園的分布是不是(3:1)
#H0 : 有無上幼稚園的分布相同(符合)
#H1 : 有無上幼稚園的分布不相同(不符)
ggplot(data.frame(test$nursery), aes(test$nursery)) + geom_bar()
table(test$nursery)
chisq.test(table(test$nursery), p = c(1/4,3/4)) 

# X-squared = 4.254, df = 1, p-value = 0.03916
#卡方值 = 4.254，p-value = 0.03916，p-value < 0.05 所以有足夠證據拒絕 H0，表示男女的分布不是3:1

#2.
#H0 : 父母的同居狀態與家庭人數無關
#H1 : 父母的同居狀態與家庭人數有關
str(test$Pstatus)
test$Pstatus = factor(test$Pstatus)
str(test$famsize)
test$famsize = factor(test$famsize)
a = table(test$famsize,test$Pstatus)
a
chisq.test(a) 

# X-squared = 7.7921, df = 1,p-value = 0.005248
#卡方值 = 7.7921，p-value = 0.005248，p-value < 0.05 
#所以有足夠證據拒絕 H0，表示父母的同居狀態與家庭人數有關
