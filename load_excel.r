install.packages("readxl")
library("readxl")

getwd()
setwd("E:/venkat sai/rstudio_language")
getwd()

read_excel("product_list.xlsx")

# writing into an excel file
install.packages("writexl")
library("writexl")

x = 10:1
y = -4:5
q = c("Hockey","Football","Baseball","Curling","Rugby","Lacrosse","Basketball","Tennis","Cricket","Soccer")

theDF = data.frame(x,y,q)
theDF

write_xlsx(theDF,"sports.xlsx")