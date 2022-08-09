# package installations
require("plyr")
library("plyr")

install.packages("data.table")
require("data.table")
library("data.table")

install.packages("reshape2")
require("reshape2")
library("reshape2")

sport <- c("Hockey", "Baseball", "Football")
league <- c("NHL", "MLB", "NFL")
trophy <- c("Stanley Cup", "Commissioner’s Trophy", "Vince Lombardi Trophy")
trophies1 <- cbind(sport,league,trophy) # vectors will become as columns
trophies0 <- rbind(sport,league,trophy) # vectors become  as rows
trophies0
trophies1
class(trophies1)

trophies2<- data.frame(sport=c("Basketball", "Golf"), league=c("NBA", "PGA"), 
                       trophy=c("Larry Championship Trophy", "Wanamaker Trophy"), stringsAsFactors=FALSE)
trophies2

trophies <- rbind(trophies1, trophies2)
trophies

# Doing the JOINS
getwd()
setwd(choose.dir())
getwd()

df1 = data.frame(StudentId = c(101:106),
                 Product = c("Hindi", "English",
                             "Maths", "Science",
                             "Political Science",
                             "Physics"))
df1

df2 = data.frame(StudentId = c(102, 104, 106,
                               107, 108),
                 State = c("Manglore", "Mysore",
                           "Pune", "Dehradun", "Delhi"))
df2


df = merge(x = df1, y = df2, by = "StudentId")
df

# left outer
df3 = merge(x = df1, y = df2, by = "StudentId",
           all.x = TRUE)
df3

# right outer
df4 = merge(x = df1, y = df2, by = "StudentId",
           all.y = TRUE)
df4

# full join
df5 = merge(x = df1, y = df2, by = "StudentId",
           all = TRUE)
df5

# cross join
df6 = merge(x = df1, y = df2, by = NULL)
df6

# semi join (doubt topic)
install.packages("dplyr")
library(dplyr)

df7 = df1 %>% semi_join(df2, by = "StudentId")
df7

# anti join (doubt topic)
df8 = df1 %>% anti_join(df2, by = "StudentId")
df8

# doing CAST and MELT
# 1. CAST : transforming rows into columns
# 2. MELT : transforming columns into row
# ships data set is a default dat set in the r packages.
install.packages("MASS")
install.packages("reshape")

library("MASS")
library("reshape")
library("reshape2")

ships
sd = (head(ships, n = 10)) # taking as data frame
class(sd)
# in id attribute putting the type and year column constant
molten_ships = melt(sd, id = c("type","year"))
molten_ships

rec <- dcast(molten_ships, type+year~variable,sum)
rec







