income <- read.csv("income2.csv")
#library(dplyr)

income_hsgrad<-income %>%
  filter(education=="HS-grad")

income_hsgrad


par(mfrow = c(1, 1))
# 直接分布圖
hist(income_hsgrad$fnlwgt,
     main = "Distribution of wight in education with HS-grad",
     xlab = "final weight",
     col = "cadetblue",

)



# 抽樣分布
par(mfrow = c(1, 3))
# 抽樣 n = 50
dist_of_mean_1 <- rep(0, 10000)

for (i in 1:10000) {
  dist_of_mean_1[i] <- mean(sample(income_hsgrad$fnlwgt, 50))
}

### Creating a histogram of the distribution of the sample mean
hist(dist_of_mean_1,
     main = "Sampling size 50",
     xlab = "final weight",
     col = "cadetblue"
)

# 抽樣 n = 250
dist_of_mean_2 <- rep(0, 10000)




for (i in 1:10000) {
  dist_of_mean_2[i] <- mean(sample(income_hsgrad$fnlwgt,250))
}

### Creating a histogram of the distribution of the sample mean
hist(dist_of_mean_2,
     main = "Sampling size 250",
     xlab = "final weight",
     col = "cadetblue"
)

# 抽樣 n = 500
dist_of_mean_3 <- rep(0, 10000)

for (i in 1:10000) {
  dist_of_mean_3[i] <- mean(sample(income_hsgrad$fnlwgt, 500))
}

### Creating a histogram of the distribution of the sample mean
hist(dist_of_mean_3,
     main = "Sampling size 500",
     xlab = "final weight",
     col = "cadetblue"
)


par(mfrow = c(1, 1))
# 箱狀圖
boxplot(
  income_hsgrad$fnlwgt,
  dist_of_mean_1,
  dist_of_mean_2,
  dist_of_mean_3,
  main = "Distribution of final weight in education of HS_grad",
  xlab = "Price value of diamond",
  col = "cadetblue",
  ylim=c(35000,500000)
)

# 抽樣 n = 20
dist_of_mean_4 <- rep(0, 10000)

for (i in 1:10000) {
  dist_of_mean_4[i] <- mean(sample(income_hsgrad$fnlwgt, 20))
}

#比較母體平均數與樣本平均數
print(mean(dist_of_mean_4))#n=20
print(mean(dist_of_mean_1))#n=50
print(mean(dist_of_mean_2))#n=250
print(mean(dist_of_mean_3))#n=500
print(mean(income_hsgrad$fnlwgt))#population


