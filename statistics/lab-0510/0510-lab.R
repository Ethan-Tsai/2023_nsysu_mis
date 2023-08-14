#MIS241-0510LAB


## 讀取資料集BankChurners.csv
test <- read.csv("./BankChurners.csv")

### 小考題目：嘗試建立一個簡單線性模型，以總交易次數(Total_Trans_Ct)去預測總交易金額(Total_Trans_Amt)

## 畫出散佈圖 (20%)
#install.packages("ggfortify")
#install.packages("ggplot2")
library(ggplot2)
library(ggfortify)

ggplot(test, aes(x = Total_Trans_Ct, y = Total_Trans_Amt)) +
  geom_point() +
  labs(
    y = "總交易金額",
    x = "總交易次數"
  )
## 建立模型 (20%)
model <- lm(Total_Trans_Amt ~ Total_Trans_Ct, test)
summary(model)


## 檢查模型是否符合assumption (20%)

## 線性檢查 by 之前的散佈圖

## ##Normality test of residuals：
##H0：殘差符合常態分配
##H1：殘差不符合常態分配
shapiro.test(model$residual)
#p-value < 2.2e-16 拒絕H0 殘差不符合常態分配

##Indepenence test of residuals：
##H0：殘差間互相獨立
##H1：殘差間有關聯

durbinWatsonTest(model)

# lag Autocorrelation D-W Statistic p-value
#1       0.4750039      1.046059       0
#p-value<0.05 拒絕H0 殘差間有關聯

##Homoscedasticity of the residuals：
##H0：殘差間的變異數具有同質性
##H1：殘差間的變異數不具有同質性

ncvTest(model)
##Non-constant Variance Score Test 
##Variance formula: ~ fitted.values 
##Chisquare = 510.2879, Df = 1, p = < 2.22e-16
#p-value<0.05 拒絕H0 殘差間的變異數不具同質性

## 請解釋模型的beta0與beta1的意義 (40%)
#beta0 : -3136.1 。 
#y截距，代表x為0的值。以此題來說，總交易次數為0 並不會有總金額產生，
#且當交易量過小時會為負的
#故此處不是我們想要的值，從一定交易量後的才會符合情況。

#beta1: 116.1 。 
#斜率，估計增加1單位，所欲求會增加多少。以此題來說，
#當交易量上升1 預測金額會上升116.1

