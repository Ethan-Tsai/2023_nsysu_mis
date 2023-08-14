#MIS241-0412LAB

str(iris)
View(iris)

#花萼長度(Sepal.Length)：計算單位是公分。(連續)
#花萼寬度(Sepal.Width)：計算單位是公分。(連續)
#花瓣長度(Petal.Length) ：計算單位是公分。(連續)
#花瓣寬度(Petal.Width)：計算單位是公分。(連續)
#品種(Species)：可分為Setosa，Versicolor和Virginica。(類別)


### 小考題目：探討不同品種(Species)的花瓣長度(Petal.Length)是否有差異？（80%）

#盒狀圖
library(ggplot2)
ggplot(iris, aes(x = Species, y = Petal.Length)) +
  geom_boxplot()

#常態性檢查
library(dplyr)
iris %>% group_by(Species) %>% summarize(p_value=shapiro.test(Petal.Length)$p.value)

# (2) 同質性檢查
library(car)
leveneTest(Petal.Length ~ Species, iris)

# p=3.129e-08

#ANOVA 
#不同品種(Species)的花瓣長度(Petal.Length)是否有差異? 
#H0: Setosa=Versicolor=Virginica (Petal.Length)。
#HA: Otherwise 

aov.race <- aov(Petal.Length ~ Species, data = iris)
summary(aov.race)

##p-value 具顯著性，拒絕H0。


### 若ANOVA為拒絕虛無假設，請由「大到小」排出不同品種的花瓣長度 (20%)

## Follow-up analysis
## Apply TukeyHSD() in R 
## TukeyHSD() document -> https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/TukeyHSD

## The intervals constructed in this way would only apply exactly to balanced designs where there are the same number of observations made at each level of the factor.
## This function incorporates an adjustment for sample size that produces sensible intervals for mildly unbalanced designs.

## 懶人包：treatment的sample size就算沒有一致，一樣能使用TukeyHSD()

result <- TukeyHSD(aov.race, conf.level=0.95)

## las=1 -> 使y軸的標題為橫向
plot(result, las=1, col="red", cex.axis=0.5)



df <- read.csv("../DiamondsPrices.csv")
View(df)

#常態性檢查
library(dplyr)
df %>% group_by(clarity) %>% summarize(p_value=shapiro.test(price)$p.value)

library(car)
leveneTest(price ~ clarity, df)

library(dplyr)

# 從data數據框中按照column_name欄位進行分組抽樣，每組抽取500筆數據
df2 <- df %>%
  group_by(clarity) %>%
  sample_n(size = 100, replace = FALSE)
print(df2,n=1600)

boxplot(price ~ clarity, data = df2,main = "Price by Clarity", xlab = "Clarity", ylab = "Price",boxwex=0.5)

data <- c(137, 22, 348, 491, 192, 238, 491, 392, 183, 74)

data_char <- as.character(df$price*133.97)

# 提取每個數字的第一個字符
first_digits <- substr(data_char, 1, 1)

# 計算每個首位數字出現的頻率
freq <- prop.table(table(first_digits))

# 繪製首位數字頻率的條形圖
barplot(freq, ylim = c(0, 0.5), main = "Benford's Law Test")

# 繪製Benford's Law的預期概率
lines(1:9, log10(1 + 1/1:9), col = "red", lwd = 2)
