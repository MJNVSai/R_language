getwd()
setwd(choose.dir())
getwd()

install.packages("dplyr") # used for data manipulation
install.packages("ggplot2") # represnts the data in graphs
install.packages("mgcv") # used for generalized additive Models

# Loading the Libraries from the packages
library(dplyr)
library(ggplot2)
library(mgcv)
help("mgcv-package")

flights = read.csv("2008.csv", header = TRUE)
flights

# getting the staring 10 rows
head(flights, n = 10)
class(flights)

# To See the Amount of Percentage in The Missing data in every Column
# also Known as Data Cleaning
remove_na = function(col)
{
  ans = sum(is.na(col) / length(col))
  
  return(ans)
}

sapply(flights, remove_na)
# sapply(flights, remove_na, round(digits=2))

select(flights, ArrDelay, CarrierDelay : LateAircraftDelay )
dim(flights)

round(mean(log(rexp(10, rate=4)), na.rm=TRUE), digits=2)


# Using Explorative Analysis
# mfrow: determines a vector with row and column values for the grid

par(mfrow = c(2,2))

# Flight Dates
barplot(table(flights$Year), main = " Year ")
#barplot(flights$Year, main="Year")
#barplot(flights$)
barplot(table(flights$Month), main = " Month ")
barplot(table(flights$DayofMonth), main = " Day ")
barplot(table(flights$DayOfWeek), main = " Week day (1 = Monday) ")

# departure time
hist(flights$CRSDepTime)

# Arruval and departure delay
par(mfrow = c(1,3))

hist(flights$DepDelay)
hist(flights$ArrDelay)

plot(flights$DepDelay, flights$ArrDelay)
abline(0,1)

plot(flights$CRSDepTime, flights$ArrDelay)



