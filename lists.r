# Lists Datatype 

list(1,2,3)

list(c(1,2,3))

list3 <- list(c(1,2,3),3:7)
list3

x = 10:1
y = -4:5
q = c("Hockey","Football","Baseball","Curling","Rugby","Lacrosse","Basketball","Tennis","Cricket","Soccer")

theDF = data.frame(x,y,q)
theDF
list(theDF, 1:10)

list5 = list(theDF, 1:10, list3)
list5

names(list5)
names(list5) = c("data.frame","vector","list")
names(list5)

list5

list6 = list(TheDataFrame = theDF, TheVector = 1:10, TheList = list3)
names(list6)
list6

# Empty list creation
emptyList = vector(mode = "list", length = 4)
emptyList

#Accessing
list5[[1]]
list5[["data.frame"]]

list5[[1]]$q
list5[[1]][, "y"]
list5[[1]][, "y", drop = FALSE]


length(list5)
list5[[4]] <- 2
length(list5)

list5[["Newelement"]] <- 3:6
length(list5)
names(list5)
list5

S = c(1,2,3,4,5,1,2,3,10)
table(S)
class(table(S))
