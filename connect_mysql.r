install.packages("RMySQL")
library(RMySQL)

mydb = dbConnect(MySQL(), user='root', password='', dbname='student', host='localhost')
mydb
dbListTables(mydb)
dbListFields(mydb, 'ddl_student')
rs = dbSendQuery(mydb, "select * from ddl_student")
rs
data = fetch(rs, n=-1)
data

a = c(1,2,3,4,5)
b = t.test(a, mu = 150)
b

c = c(10,11,12,13,14,15)
t.test(a, c, var.equal = TRUE)

t.test(a, c, paired = TRUE)


# Main Example
require(graphics)

t.test(1:10, y = c(7:20))      # P = .00001855
t.test(1:10, y = c(7:20, 200)) # P = .1245    -- NOT significant anymore

## Classical example: Student's sleep data
plot(extra ~ group, data = sleep)
## Traditional interface
with(sleep, t.test(extra[group == 1], extra[group == 2]))

## Formula interface
t.test(extra ~ group, data = sleep)

## Formula interface to one-sample test
t.test(extra ~ 1, data = sleep)

## Formula interface to paired test
## The sleep data are actually paired, so could have been in wide format:
sleep2 <- reshape(sleep, direction = "wide", 
                  idvar = "ID", timevar = "group")
t.test(Pair(extra.1, extra.2) ~ 1, data = sleep2)