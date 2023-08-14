#install.packages("ggfortify")
#install.packages("caTools")
#install.packages("car")
#install.packages("ggplot2")


library(ggplot2)
library(ggfortify)
library(caTools)
library(car)


ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  labs(
    y = "Miles per gallon",
    x = "Car's weight (1000 lbs)"
  )


model <- lm(mpg ~ wt, mtcars)
summary(model)

# load necessary libraries
library(ggpubr)

# create plot with regression line, regression equation and R^2
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_smooth(method = "lm") +
  geom_point() +
  stat_regline_equation(label.x = 3, label.y = 32) + # for regression equation
  stat_cor(aes(label = after_stat(rr.label)), label.x = 3, label.y = 30) + # for R^2
  theme_minimal()

##Normality test of residual
shapiro.test(model$residual)

##Indepenence test of residuals
durbinWatsonTest(model)

##Homoscedasticity of the residuals
ncvTest(model)

##
autoplot(model)













