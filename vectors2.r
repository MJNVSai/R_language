x <- c(1,2,3,4,5,6,7,8,9,10)
x

x + 2
x - 5
x * 5
x / 2
x ^ 2
sqrt(x)

class(x)

1:10
10:1
-2:5
5:-2

a = 1:10
b = -5:4
a
b

a + b
a - b
a * b
a / b
a ^ b

length(a)
length(b)
length(a + b)

z = a + b * x / 2
z

a + c(1,2)
a + c(1,2,3)

a <= 5
a < b

a1 = 10:1
b1 = -4:5

any(a1 < b1)
all(a1 < b1)

q = c("Hockey","Football","Baseball","Curling","Rugby","Lacrosse","Basketball","Tennis","Cricket","Soccer")
q

nchar(q)
length(q)

a1[1]
a1[1:3]
a1[c(1,4)]


d1 = c(One = "x", Two = "Y", Three = "Z")
d1

w = 1:3
w
names(w) = c("col1","col2","col3")
w

q2 = c(q,"Hockey","Lacrosse","Hockey","Waterpolo","Hockey","Lacrosee")
q2fact = as.factor(q2)
q2fact

as.numeric((q2fact))

abs(-356)
ceiling(3.56)
floor(3.56)
round(3.56)












