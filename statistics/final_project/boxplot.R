
# 載入數據集
data <- read.csv("活頁簿1.csv")  # 根據你的數據集格式進行讀取，這裡假設是CSV格式

# 使用 graphics 包繪製箱型圖
boxplot(全部   ~ far_work_type, data = data,
        xlab = "父母工作類別 [父]", ylab = "目前一個月的零用金全部有多少",
        main = "far_work_type vs. Amount of Pocket Money/per month")

boxplot(全部   ~ family_eco, data = data,
        xlab = "家庭經濟狀況", ylab = "目前一個月的零用金全部有多少",
        main = "family_eco vs. Amount of Pocket Money/per month")

boxplot(全部   ~ family_work, data = data,
        xlab = "家庭工作狀況", ylab = "目前一個月的零用金全部有多少",
        main = "family_work vs. Amount of Pocket Money/per month")


custom_order2 <- c("極度節省", "節省", "小節省", "中等","小奢侈","奢侈","極度奢侈")
data$far_comsume_habbit <- factor(data$far_comsume_habbit, levels = custom_order2)



boxplot(全部   ~ far_comsume_habbit, data = data,
        xlab = "父親消費習慣", ylab = "目前一個月的零用金全部有多少",
        main = "far_comsume_habbit vs. Amount of Pocket Money/per month")


data$mom_comsume_habbit <- factor(data$mom_comsume_habbit, levels = custom_order2)
boxplot(全部   ~ mom_comsume_habbit, data = data,
        xlab = "母親消費習慣", ylab = "目前一個月的零用金全部有多少",
        main = "mom_comsume_habbit vs. Amount of Pocket Money/per month")

boxplot(全部   ~ family_online_shop, data = data,
        xlab = "家庭網路購物頻率", ylab = "目前一個月的零用金全部有多少",
        main = "family_online_shop vs. Amount of Pocket Money/per month")

boxplot(全部   ~ family_communicate, data = data,
        xlab = "家庭溝通情況", ylab = "目前一個月的零用金全部有多少",
        main = "family_communicate vs. Amount of Pocket Money/per month")



boxplot(全部   ~ 目前住宿地點, data = data,
        xlab = "目前住宿地點", ylab = "目前一個月的零用金全部有多少",
        main = "Accommodation vs. Amount of Pocket Money/per month")


boxplot(全部   ~ part_time, data = data,
        xlab = "part_time", ylab = "目前一個月的零用金全部有多少",
        main = "part_time vs. Amount of Pocket Money/per month")

boxplot(全部   ~ hometown, data = data,
        xlab = "hometown", ylab = "目前一個月的零用金全部有多少",
        main = "hometown vs. Amount of Pocket Money/per month")





boxplot(全部   ~ mom_worktype, data = data,
        xlab = "mom_worktype", ylab = "目前一個月的零用金全部有多少",
        main = "mom_worktype vs. Amount of Pocket Money/per month")



boxplot(全部   ~ mom_exp, data = data,
        xlab = "mom_exp", ylab = "目前一個月的零用金全部有多少",
        main = "mom_exp vs. Amount of Pocket Money/per month")


boxplot(全部   ~ siblings, data = data,
        xlab = "siblings", ylab = "目前一個月的零用金全部有多少",
        main = "siblings vs. Amount of Pocket Money/per month")


boxplot(全部   ~ who_provide, data = data,
        xlab = "who_provide", ylab = "目前一個月的零用金全部有多少",
        main = "who_provide vs. Amount of Pocket Money/per month")

boxplot(全部   ~ who_decide_amount, data = data,
        xlab = "who_decide_amount", ylab = "目前一個月的零用金全部有多少",
        main = "who_decide_amount vs. Amount of Pocket Money/per month")

boxplot(全部   ~ family_expectations, data = data,
        xlab = "family_expectations", ylab = "目前一個月的零用金全部有多少",
        main = "family_expectations vs. Amount of Pocket Money/per month")

boxplot(全部   ~ graduate_School, data = data,
        xlab = "graduate_School", ylab = "目前一個月的零用金全部有多少",
        main = "graduate_School vs. Amount of Pocket Money/per month")

boxplot(全部   ~ GPA, data = data,
        xlab = "GPA", ylab = "目前一個月的零用金全部有多少",
        main = "GPA vs. Amount of Pocket Money/per month")

boxplot(全部   ~ Engels_law, data = data,
        xlab = "Engels_law", ylab = "目前一個月的零用金全部有多少",
        main = "Engels_law vs. Amount of Pocket Money/per month")


boxplot(全部   ~ enough, data = data,
        xlab = "enough", ylab = "目前一個月的零用金全部有多少",
        main = "enough vs. Amount of Pocket Money/per month")

custom_order <- c("200以下", "201-350", "351-500", "501-750","751-1000","1001-1150","1150以上")
data$most_expensive_eat <- factor(data$most_expensive_eat, levels = custom_order)
boxplot(全部   ~ most_expensive_eat, data = data,
        xlab = "most_expensive_eat", ylab = "目前一個月的零用金全部有多少",
        main = "most_expensive_eat vs. Amount of Pocket Money/per month")
data$entertainment <- factor(data$entertainment, levels = custom_order)
boxplot(全部   ~ entertainment, data = data,
        xlab = "entertainment", ylab = "目前一個月的零用金全部有多少",
        main = "entertainment vs. Amount of Pocket Money/per month")


custom_order <- c("200以下", "201-350", "351-500", "501-750","751-1000","1001-1150","1150以上")

data$clothing <- factor(data$clothing, levels = custom_order)

boxplot(全部   ~ clothing, data = data,
        xlab = "clothing", ylab = "目前一個月的零用金全部有多少",
        main = "clothing vs. Amount of Pocket Money/per month")

boxplot(全部   ~ adjust, data = data,
        xlab = "adjust", ylab = "目前一個月的零用金全部有多少",
        main = "adjust vs. Amount of Pocket Money/per month")

boxplot(全部   ~ grade, data = data,
        xlab = "grade", ylab = "目前一個月的零用金全部有多少",
        main = "grade vs. Amount of Pocket Money/per month")



plots.dir.path <- list.files(tempdir(), pattern="rs-graphics", full.names = TRUE); 
plots.png.paths <- list.files(plots.dir.path, pattern=".png", full.names = TRUE)


file.copy(from=plots.png.paths, to="./all_pic")



# 創建散點圖
plot(data$全部 ,data$family_online_shop, xlab = "目前一個月的零用金全部有多少", ylab = "家庭網路購物頻率", 
     main = "Scatter plot of Feature 1 and Feature 2")


# 从数据集中提取特征列的值
feature_values <- data$全部

# 计算特征的平均值
average_feature <- mean(feature_values)

# 打印平均值
print(average_feature)








