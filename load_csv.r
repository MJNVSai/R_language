getwd()

setwd("E:/venkat sai/rstudio_language") # it will set the new directory location

getwd() # it will return the present location of working directory.

cdata <- read.csv("company.csv")
cdata

# Analyzing the CSV file
is.data.frame(cdata)
ncol(cdata)
nrow(cdata)

# getting the maximum salary from the csv file
sal <- max(cdata$salary)
sal

# getting the person details from the max salary
psal <- subset(cdata, salary == max(salary))
psal

temp = subset(cdata, dept == "IT")
temp

# Employess less than 600 in IT department
lesit = subset(cdata, salary < 600 & dept == "IT")
lesit

# Employess joined After 2014 Year
afyear = subset(cdata, as.Date(start_date) > as.Date("2014-01-01"))
afyear

# Writing into CSV file
write.csv(afyear,"output.csv")
read.csv("output.csv")



