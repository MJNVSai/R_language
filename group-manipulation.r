#  apply function

theMatrix = matrix(1:9, nrow = 3)
theMatrix

# 1 means sum of rows and 2 means sum of columns
apply(theMatrix, 1, sum)
apply(theMatrix, 2, sum)

theMatrix[2,3] <- NA
apply(theMatrix, 1, sum)
apply(theMatrix, 1, sum, na.rm = TRUE)

rowSums(theMatrix, na.rm = TRUE)
colSums(theMatrix, na.rm = TRUE)

# lapply & sapply functions

theList <- list(A = matrix(1:9,3), B = 1:5, C = matrix(1:4,2), D = 2)
theList

lapply(theList, sum) # returns list
sapply(theList, sum) # returns data frame

theNames <- c("Tyson", "Rizwanullah", "Dragon Emperor", "A.Charan")
lapply(theNames, nchar)
sapply(theNames, nchar)

# mapply function
f3 <- function(x,y)
{
  NROW(x) + NCOL(y)
}


flist = list(A = matrix(1:16,4), B = matrix(1:16,2), C = 1:5)
flist

slist = list(A = matrix(1:16,4), B = matrix(1:16,2), C = 15:1)
slist

mapply(identical, flist, slist)
mapply(f3, flist, slist)



# using aggregate function
eid = c(2501 : 2509)
eid

ename = c("Rizwan", "Ajay", "Mounav", "Charan", "Srinivas", "Vamsi", "Deepak", "Abhi", "Pavan")
ename

desig = c("sales", "accounts", "manager", "sales", "sales", "accounts", "accounts", "manager", "sales")
desig

dept_id = c(10,10,10,10,20,20,20,30,30)
dept_id

salary = c(23000, 35000, 40000, 80000, 230000, 98000, 50000, 85000, 130000)
salary

employee = data.frame(eid, ename, desig, dept_id, salary)
employee

aggregate(salary~dept_id, employee, mean)
aggregate(salary~dept_id, employee, max)

aggregate(salary~dept_id+desig, employee, mean)
aggregate(salary~dept_id+desig, employee, min)



data()

install.packages("plyr")
require("plyr")
#data(package = "plyr")

# using plyr package
employee1 = data.frame(eid, ename, desig, dept_id, salary)
employee1

employee1$eid[employee1$salary < 36000] <- 0
employee1
any(is.na(employee1$eid))


# using data table
install.packages("data.table")
require("data.table")

theDT = data.table(eid, ename, desig, dept_id, salary)
theDT

class(theDT$ename)
class(employee1$ename)

theDT[1:2,]
theDT[theDT$eid >= 2504]

theDT[, list(eid,desig)]
theDT[, ename]
theDT[, list(ename)]

# if yu use column name as character name then yu should use with attribute
theDT[, "ename", with = FALSE] 
theDT[, c("ename","eid"), with = FALSE]

# get all the tables
tables()

# setting the key in the data table
setkey(theDT, salary)
theDT
key(theDT)

tables()
theDT[theDT$salary > 50000]

setkey(theDT, desig, dept_id, salary)
tables()
theDT

# aggregate on data tables
theDT[, mean(salary), by = dept_id]
theDT[, list(price = mean(salary)), by = dept_id]

theDT[, mean(salary), by = list(dept_id,desig)]
theDT[, list(price = mean(salary), desig = mean(eid)), by = dept_id]

data()

