# Doing Math With Simulation R
# Computing the probabilites of the given vector

exact_one = function(p)
{
  notp = 1 - p
  tot = 0.0
  
  for(i in 1:length(p))
  {
    tot = tot + p[i] + prod(notp[-i])
  }
  
  return(tot)
}

v1 = c(1,2,3,4,5)
a1 = exact_one(v1)
a1

# Cumulative Sum and Product Of an Vector
cumsum(v1)
cumprod(v1)

# minima and maxima
mat1 <- matrix(c(1,5,6,2,3,2), nrow = 3)
mat1

min(mat1[,1], mat1[,2])
pmin(mat1[,1], mat1[,2])
pmin(mat1[1,], mat1[2,], mat1[3,])

# Sorting in R
unsort = c(13,2,5,2,3)
sort(unsort)
unsort
order(unsort) # it will get the indices of the sorted values in the original vector

# sorting the dataframe

v2 = c('def', 'ab', 'zzzz')
v3 = c(2,5,1)
y = data.frame(v1 = v2, v2 = v3)
y

r <- order(y$v2)
r

z <- y[r,]
z

rank(v3)
rank(v1)

# Linear ALgebra
crossprod(1:3,c(5,12,13)) #  1*5 + 2*12 + 3*13 = 68

# Matrix Multiplication
a = matrix(1:4, ncol = 2, byrow = TRUE)
a
b = matrix(c(1,0,-1,1), nrow = 2)
b

mat_mul = a %*% b
mat_mul

# solving the equations
s1 = matrix(c(1,1,-1,1), nrow = 2, ncol = 2)
s2 = c(2,4)
solve(s1,s2)
solve(s1)

# matrix Transpose
q1 = matrix(1:9, nrow = 3, byrow = TRUE)
q1

t(q1)

# determinent of matrix
det(q1)

# finding the eigen values
eigen(q1)

# Set operations in R
p <- c(1,2,5)
q <- c(5,1,8,9)

union(p,q)
intersect(p,q)

setdiff(p,q)
setdiff(q,p)

setequal(p,q)
setequal(p, c(1,2,5))

5 %in% p
10 %in% q

choose(5,3)

# Finding Symmetric Difference
symetric = function(a,b)
{
  sx = setdiff(a,b)
  sy = setdiff(b,a)
  result = union(sx,sy)
  
  return(result)
}

f = c(1,2,5)
g = c(5,1,8,9)
ans = symetric(f,g)
ans