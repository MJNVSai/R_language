install.packages("coefplot")

# _a = 10
# a_% = 20

x <- c(1,2,3,4,5,6,7,8)
print(x)

y <- x*3
print(y)

z = x + 2
print(z)

z1 = x - 1
print(z1)

z2 = y/3
print(z2)

z3 = x^2
print(z3)

z4 = sqrt(z)
print(z4)

# : operator which generates a sequence of numbers

x1 = 1:50
print(x1)

x2 = 50:-5
print(x2)

x3 = 1:50:2
print(x3)

a <- 1:10 # another way creating a vector
b <- c(-5,-4,-3,-2,-1,0,1,2,3,4)
print(a)
print(b)

# addition of 2 vectors
a + b

# Subraction of 2 vectors
a - b

# Multiplication of 2 vectors
a * b

# Division of 2 vectors
a / b

# raise one to the another power of vector
a ^ b

# Checking the length of vectors
length(a)
length(b)
length(a + b)

# Vectors of different lengths
a + c(1,2)
b + c(1,2,3)
a
b






