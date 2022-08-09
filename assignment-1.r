# Create a function to calculate the average, median and mean for a numeric vector age in employee database.

emp <- function(x)
{
  xaverage = sum(x)/length(x)
  print("average of vector : ")
  print(xaverage)
  
  xmean = mean(x)
  print("Mean of Vector : ")
  print(xmean)
  
  xmedian = median(x)
  print("Median of vector : ")
  print(xmedian)
  
}

vect = c(1,2,3,4,5)
emp(vect)


# Create a data frame that stores the name, age, designation of the employee. 
# Find how many employees are working in each designation?

name = c(' Mounav ', ' Rizwan ', ' Ajay ', ' Charan ', ' Vamsi ', ' M.sai ')
age  = c(19, 19, 20, 30, 18, 20)
desig = c(' Manager ', ' webprogramer ', ' cyber-manager ', ' Manager ', ' webprogramer ', ' Boss ')

df = data.frame(Employee = name, Age = age, Designation = desig)
df
ind = unique(desig)

des = c()
no = c()

for(i in 1:length(ind))
{
  count = 0
  for(j in 1 : length(desig))
  {
    if(ind[i] == desig[j])
    {
      count = count + 1
    }
  }
  des = append(des,ind[i])
  no = append(no,count)
}

des
no

result = data.frame("Designation" = ind, "Count" = no)
result

# Create two vectors that stores the details of name and 
# gender of the employees. Find how many male and female employees are present

name1  <-  c('sai','geetha','ajay','Madhu','vamsi','Parveen')
gender  <- c('male','female','male','female','male','female')
mc = sum(gender == 'male')
fc = sum(gender == 'female')

print("No.of male employess : ")
mc
print("No.of female employess : ")
fc


# Write R code to define the function by using if-else
f = function(x)
{
  if(x < (1/2))
  {
    print(x)
  }
  else if((1/2) < x && x < 1)
  {
    print(1 - x)
  }
  else
  {
    print(0)
  }
}

x = 0.3
f(x)



#  Create a function to calculate the average, median and mean for a numeric vector age in employee database.

install.packages("RMySQL")
library(RMySQL)

mydb = dbConnect(MySQL(), user='root', password='', dbname='ddl', host='localhost')
mydb

dbListTables(mydb)

dbListFields(mydb, 'employee')

rs = dbSendQuery(mydb, "select age from employee")
rs
data = fetch(rs, n=-1)
data

emp(data$age)

data
class(data)

data$age




