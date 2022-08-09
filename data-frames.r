# Create a data frame that stores the name, age, designation of the employee. 
# Find how  many employees are working in each designation?   

name = c(' Mounav ', ' Rizwan ', ' Ajay ', ' Charan ', ' Vamsi ', ' M.sai ')
age  = c(19, 19, 20, 30, 18, 20)
desig = c(' Manager ', ' webprogramer ', ' cyber-manager ', ' Manager ', ' webprogramer ', ' Boss ')

df = data.frame(Employee = name, Age = age, Designation = desig)
df
ind = unique(desig)

des = c()
no = c()

for(i in 1 : length(ind))
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

# Create two vectors that stores the details of name and gender of the employees.
# Find how many ‘male’ and ‘female’ employees are present?

name1  <-  c('sai','geetha','ajay','Madhu','vamsi','Parveen')
gender  <- c('male','female','male','female','male','female')
mc = sum(gender == 'male')
fc = sum(gender == 'female')
print("No.of male employess : ")
mc
print("No.of female employess : ")
fc



