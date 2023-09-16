"Hello World!"
10
5+5

print("Hellow World!")

#this is a comment
"Hellow World!"

name <- "John"
age <- 40

name
print(age)

class(age)

x <- "1"
x <- as.numeric(x)

class(x)

max(5, 10, 15)

10 > 9 
10 == 9
10 < 9 
10 != 9 

a <- 10
b <- 9
a > b

a <- 200
b <- 33
c <- 500
if (a > b & c > a){print("Both conditions are true")}

if (a>b | a>c){print("At least one of the conditions is true")}

i <- 1
while (i<6) {
  print(i)
  i <- i + 1
  }

for (x in 1:10) {
  print (x)
}

my_function <- function() {
  print ("Hello World!")
}
my_function()

my_function <- function(fname) {
  print(fname)
}

my_function("Peter")
my_function("Lois")
my_function("Stewie")

fruits <- c("banana", "apple", "orange")
fruits
length(fruits)

thismatrix <- matrix(c(1,2,3,4,5,6), nrow=3, ncol=2)
thismatrix

thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape",
                       "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)

thismatrix

newmatrix <- cbind(thismatrix, c("strawberry", "blueberry", "raspberry")) 
newmatrix

Matrix1 <- matrix(c("apple", "banana", "cherry", "grape"), nrow = 2, ncol = 2)
Matrix2 <- matrix(c("orange", "mango", "pineapple", "watermelon"), nrow = 2, ncol = 2)

Matrix_Combined_row <- rbind(Matrix1, Matrix2) 
Matrix_Combined_row

Matrix_Combined_column <- cbind(Matrix1, Matrix2) 
Matrix_Combined_column

dim(thismatrix)

thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

for (rows in 1:nrow(thismatrix)) {
  for (columns in 1:ncol(thismatrix)) {
    print(thismatrix[rows, columns]) }
}

# Create a data frame with Training, Pulse, and Duration as column names 
Data_Frame <- data.frame (
Training = c("Strength","Stamina","Other"), Pulse = c(100, 150, 120),
Duration = c(60, 30, 45)
)

summary(Data_Frame)

New_row_DF <- rbind(Data_Frame, c("Strength", 110, 110))
                    
New_col_DF <- cbind(Data_Frame, Steps = c(1000, 6000, 2000))

thislist <- list("apple", "banana", "cherry")
for (x in thislist) {
  print(x) }

install.packages('ggplot2')

library(ggplot2)

?ggplot2

print(getwd())
