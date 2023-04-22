library(dplyr)

# 讀取檔案
data <- read.csv("DiamondsPrices.csv")

# 篩選 cut 為 fair 鑽石
diam_fair <- data %>%
  filter(cut == "Fair")
diam_fair

par(mfrow = c(1, 1))
# 直接分布圖
hist(diam_fair$price,
     main = "Distribution of diamond in Fair",
     xlab = "Price value of diamond",
     col = "cadetblue"
)

# 抽樣分布
par(mfrow = c(1, 3))
# 抽樣 n = 50
dist_of_mean_1 <- rep(0, 10000)

for (i in 1:10000) {
  dist_of_mean_1[i] <- mean(sample(diam_fair$price, 50))
}

### Creating a histogram of the distribution of the sample mean
hist(dist_of_mean_1,
     main = "Sampling size 50",
     xlab = "Price value of diamond",
     col = "cadetblue"
)

# 抽樣 n = 250
dist_of_mean_2 <- rep(0, 10000)

for (i in 1:10000) {
  dist_of_mean_2[i] <- mean(sample(diam_fair$price, 250))
}

### Creating a histogram of the distribution of the sample mean
hist(dist_of_mean_2,
     main = "Sampling size 250",
     xlab = "Price value of diamond",
     col = "cadetblue"
)

# 抽樣 n = 500
dist_of_mean_3 <- rep(0, 10000)

for (i in 1:10000) {
  dist_of_mean_3[i] <- mean(sample(diam_fair$price, 500))
}

### Creating a histogram of the distribution of the sample mean
hist(dist_of_mean_3,
     main = "Sampling size 500",
     xlab = "Price value of diamond",
     col = "cadetblue"
)


#比較母體平均數與樣本平均數
print(mean(dist_of_mean_1))#n=50
print(mean(dist_of_mean_2))#n=250
print(mean(dist_of_mean_3))#n=500
print(mean(diam_fair$price))#population


# 抽樣 n = 20
dist_of_mean_4 <- rep(0, 10000)

for (i in 1:10000) {
  dist_of_mean_4[i] <- mean(sample(diam_fair$price, 20))
}
print(mean(dist_of_mean_4))#n=20


#比較母體平均數與樣本平均數
print(mean(dist_of_mean_4))#n=20
print(mean(dist_of_mean_1))#n=50
print(mean(dist_of_mean_2))#n=250
print(mean(dist_of_mean_3))#n=500
print(mean(diam_fair$price))#population


