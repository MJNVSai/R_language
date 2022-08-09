# Implement Boxplot in R using ggplot package by considering a random dataset

library("ggplot2")

data("diamonds")

data1 = diamonds
data1
class(data1)

data2 = data.frame(head(diamonds))
data2

boxplot(data2$price)

ggplot(data2, aes(x = price, y = y)) + geom_boxplot()