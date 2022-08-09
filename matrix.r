# 1. Write a R program to create a matrix taking a given vector of numbers as input. 
# Display the matrix

num = c(1,2,3,4,5,6,7,8,9,10)
ans = matrix(num, nrow = 5)
ans 

# 2.Write a R program to create a matrix taking a given vector of numbers 
# as input and define the column and row names. Display the matrix.

vect = c(1,2,3,4,5,6,7,8,9)
ans2 = matrix(vect, nrow = 3)
ans2 
rownames(ans2)
colnames(ans2)
rownames(ans2) = c("First","Second","Third")
colnames(ans2) = c("col1","col2","col3")
rownames(ans2)
colnames(ans2)
ans2

#3.	Write a R program to access the element at 3rd column and 2nd row, 
# only the 3rd row and only the 4th column of a given matrix

vect3 = c(9,8,7,6,5,4,3,2,1)
ans3 = matrix(vect3, nrow = 3)
ans3
res = ans3[c(2),c(3)]
res

#4.Write a R program to create two 2x3 matrix and add, subtract, multiply and divide the matrixes
arth = matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)
arth
arth2 = matrix(c(7,8,9,10,11,12), nrow = 2, ncol = 3)
arth2
arth3 = t(arth2)
arth3

add = arth + arth2
add

sub = arth - arth2
sub

mul = arth * arth2
mul

div = arth / arth2
div

#5.Write a R program to extract the submatrix whose rows have column value > 7 from a given matrix
rname = c("r1","r2","r3","r4")
cname = c("c1","c2","c3","c4")
vect5 = matrix(1:16, nrow = 4, byrow = TRUE, dimnames = list(rname,cname))
vect5

vect5[vect5[,3] > 7,]

#Write a R program to convert a given matrix to a list of column-vectors
x = matrix(1:12, ncol=3)
x
l =  split(x, rep(1:ncol(x), each = nrow(x)))
l

#7.Write a R program to find row and column index of maximum and minimum value in a given matrix
mat7 = matrix(1:20, nrow = 4)
mat7
a = max(mat7)
b = min(mat7)
which(mat7 == a,arr.ind = TRUE)
which(mat7 == b, arr.ind = TRUE)




