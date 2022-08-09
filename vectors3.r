# 1. Write R code to create a vector of a specified type and length.
# Create vector of numeric, complex, logical and character types of length 6.

numbers = c(1,2,3,4,5,6)
numbers
class(numbers)

alpha = c('A','B','C','D','E','F')
alpha
class(alpha)

comp = c(1+2i,3+4i,5+6i,7+8i,9+3i,5+3i)
comp
class(comp)

logar = c(TRUE,FALSE,TRUE,FALSE,TRUE,FALSE)
logar
class(logar)


# Write R code to add two vectors of integer�s type and length 3
vect1 = c(1,2,3)
vect1
vect2 = c(4,5,6)
vect2
sum = vect1 + vect2
sum


# Write R code to append value to a given empty vector
x = c()
k = append(x,1:5)
k

# Write R code to multiply two vectors of integer’s type and length 3.
mul1 = c(1,2,3)
mul2 = c(6,7,8)
mul3 = mul1*mul2
mul3

# Write R code to divide two vectors of integer’s type and length 3.
div1 = c(4,6,8)
div2 = c(2,2,2)
div3 = div1 /div2
div3


# Write R code to find Sum, Mean and Product of a Vector
vect = c(1,2,3,4,5)
vect
addv = sum(vect)
addv
avg = mean(vect)
avg
mul = prod(vect)
mul

# Write R code to find Sum, Mean and Product of a Vector, ignore element like NA or NaN
temp = c(1,NA,5,NA,2,3)
vadd = sum(temp,na.rm = TRUE)
vmean = mean(temp,na.rm = TRUE)
vmul = prod(temp,na.rm = TRUE)
vadd
vmean
vmul

# Write R code to find the minimum and the maximum of a Vector.
large = c(2,4,64,56,43,1)
small = min(large)
big = max(large)
small
big

# Write R code to sort a Vector in ascending and descending order. 
unsort = c(45,1,67,23,98,43,66)
ascen = sort(unsort,decreasing = FALSE)
desen = sort(unsort, decreasing = TRUE)
ascen
desen

# Write R code to test whether a given vector contains a specified element
lins = c(2,4,5,6,7)
res = match(4,lins)
res

# 11.	Write R code to count the specific value in a given vector
rep = c(1,2,2,2,3,4,1)
result = sum(rep == 2)
result

# 12.	 Write R code to access the last value in a given vector.
org = c(1,2,3,4,5)
orgres = tail(org,n = 1)
orgres

# Write R code to find second highest value in a given vector
sh = c(15,3,10,1,7,9)
sh
sh2 = sort(sh,decreasing = TRUE)
sh3 = sh2[2]
sh3

# Write R code to find nth highest value in a given vector. 
n1 = c(15,3,10,1,7,9)
n2 = readline()
n3 = sort(n1,decreasing = TRUE)
n4 = n3[n2]
n4

# 3.	Write R code to find common elements from multiple vector
cv = c(2,1,3,4,5)
cv2 = c(2,6,7,1,9)
cv3 = c(3,7,8,2,10)
cv4 = intersect(intersect(cv,cv2),cv3)
cv4

# Write R code to convert given dataframe column(s) to a vector.
df1 = c(1,2,3,4,5)
df2 = c(6,7,8,9,10)
df3 = c(11,12,13,14,15)
df4 = c(16,17,18,19,20)
df <- data.frame(df1 = 1:5, df2 = 6:10, df3 = 11:15, df4 = 16:20)
df

# Write R code to extract every nth element of a given vector. 
gv = 1:30
gv1 = gv[seq(1, length(gv), 5)]
gv1

# 6.	Write R code to list the distinct values in a vector from a given vector.
repv <- c(10,10,10,20,20,30,40,50,89,89)
repv1 <- unique(repv)
repv1

# 7.	Write R code to find the elements of a given vector that are not in another given vector.
de = c(1,2,3,3,3,4)
de1 = c(5,6,6,6,8)
de2 = setdiff(de,de1)
de2

# Write R code to reverse the order of given vector.
v1 = c(1,2,3,4,5)
v2 = rev(v1)
v2

# 9.	Write R code to concatenate a vector. 
vcon1 = c(1,2,3)
vcon2 = c(4,5,6)
vcon3 = c(vcon1,vcon2)
vcon3


# 10.	Write R code to count number of values in a range in a given vector...
r1 = c(0,1,2,3,4,5,6,7,8,9,10)
r2 = sum(r1 > 2 & r1 < 9)
r2

# 11.	Write R code to convert two columns of a data frame to a named vector.
plang = c(' c language ',' python ',' c++ ',' HTMl ',' java ')
ide = c('Turboc++', 'pycharm', 'online', 'notepad', 'netbeans')
tab = data.frame(languages = plang, IDE = ide)
tab
setNames(as.character(tab$languages), as.character(tab$IDE))


# 12.	Write R code to create a vector and find the length and the dimension of the vector. 
real = c(1,2,3,4,5,6)
length(real)
dim(real)


# 13.	Write R code to test 
# whether the value of the element of a given vector greater than 10 or not. Return TRUE or FALSE..

whole = c(0,1,2,3,25,15,99,100)
whole > 10


# 14.	Write R code to add 3 to each element in a given vector. Print the original and new vector.
ov = c(1,2,3,4)
nv = ov + 3
ov
nv


# 15.	Write a R code to create a vector using: operator and seq() function.
sap  =  seq(from = 1, to = 30)
sap





