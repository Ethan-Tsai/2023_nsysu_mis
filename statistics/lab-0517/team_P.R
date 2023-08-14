#install.packages("tidyverse")
library(tidyverse)
# load necessary libraries
library(ggpubr)
test <- read.csv("./BankChurners.csv")



model <- lm(Credit_Limit ~ Total_Revolving_Bal+Total_Trans_Amt+Dependent_count+Months_on_book, data = test)
summary(model)
summary(model)$coefficient

ggplot(test, aes(x = 0.4971108*Total_Revolving_Bal+0.5447080 *Total_Trans_Amt+509.3941417*Dependent_count+118.0845013*Months_on_book , y = Credit_Limit)) +
  geom_smooth(method = "lm") +
  geom_point() +
  stat_regline_equation(label.x = 3, label.y = 32) + # for regression equation
  #stat_cor(aes(label = after_stat(rr.label)), label.x = 40, label.y = 28) + # for R^2
  theme_minimal()





