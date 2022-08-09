? '+'

x = 10:1
y = -4:5
q = c("Hockey","Football","Baseball","Curling","Rugby","Lacrosse","Basketball","Tennis","Cricket","Soccer")

theDF = data.frame(x,y,q)
theDF

# Changing Column Names
theDF <- data.frame(First = x, Second = y, Third = q)
theDF

# Number of rows,columns,dimensions
nrow(theDF)
ncol(theDF)
dim(theDF)

# getting column names
names(theDF)
names(theDF)[3] # 3rd column name

#getting row names
rownames(theDF)
rownames(theDF) = c("One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten")
rownames(theDF)
rownames(theDF) <- NULL
rownames(theDF)

# getting top records
head(theDF)
head(theDF, n = 8)

# getting last records
tail(theDF)
tail(theDF, n = 2)
class(theDF)

#getting particular column
theDF$Third
theDF$Sport
theDF[3,2] # 3,2 means 3rd row 2nd column

theDF[3,2:3]
theDF[c(3,8),2]
theDF[c(3,5),2:3]

# access all columns and rows
theDF[,3]
theDF[,2:3]
theDF[2,]
theDF[2:4,]

theDF[, c("First","Third")]
theDF[, "Third"]

class(theDF[, "Third"])
class(theDF["Third"])

theDF[, "Third", drop = FALSE]
theDF[, 3, drop = FALSE]


f = c(1,2,3,4,5,NA,NA,NA,9,10)
sum(is.na(f)/length(f))