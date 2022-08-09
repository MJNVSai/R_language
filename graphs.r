name = c(' Mounav ', ' Rizwan ', ' Ajay ', ' Charan ', ' Vamsi ', ' M.sai ')
age  = c(19, 19, 20, 30, 18, 20)
desig = c(' Manager ', ' webprogramer ', ' cyber-manager ', ' Manager ', ' webprogramer ', ' Boss ')
roll = c(1,2,3,4,5,6)

df = data.frame(Roll_no = roll, Employee = name, Age = age, Designation = desig)
df

# Histogram graphs
hist(df$Age, main = "Age Graph", xlab = "age", ylab = "number")

# Scatter plot
plot(Age ~ Roll_no, data = df)

# Boxplot
boxplot(df$Roll_no)

# ggplot installation
install.packages("ggplot2")
library(ggplot2)

# histogram ggplot
ggplot(data = df) + geom_histogram(aes(x = Age))

# Scatterplot ggplot
ggplot(df, aes(x = Roll_no, y = Age)) + geom_point()

# boxplot ggplot
ggplot(df, aes(x = Roll_no, y = 1)) + geom_boxplot()

# violin plot in ggplot
ggplot(df, aes(y = Roll_no, x = 1)) + geom_violin()
ggplot(df, aes(y = Roll_no, x = "cut")) + geom_violin() + geom_point()




