# scripts
# hello world / print code
myString <- "Hello World!"
print (myString)

hello_world <- "hello world!"
print(hello_world)

# addition
x<-10
y<-20
z<-x+y
z
print(paste("Addition of two number is: ",z))

#subtraction
x<-20
y<-10
z<-x-y
z
print(paste("Subtarction of two number is: ",z))

#multiplication
x<-10
y<-10
z<-x*y
print(paste("modulus of two number is: ",z))


#arithmetic operator
a<-10
b<-22
c<-a+b
d<-b-a
e<-a*b
f<-a/b

print(paste("addition of two numbers is:",c))
print(paste("subtraction of two numbers is:",d))
print(paste("multipliaction of two numbers is:",e))
print(paste("division of two numbers is:",f))

#relational operator
v <- c(2,4.4,6,8)
t <- c(8,2.5,8,7)
print(v>t)
print(t>v)

v <- c(4,5,6,7)
t <- c(4,5,66,74)
print(v>=t)
print(v<=t)


#logical 
x <- c(TRUE, FALSE, 5, 0)
y <- c(TRUE, TRUE, 8, 0)
!x
x&y     #bitwise and
#x&&y   #logical and
x|y     #bitwise or
#x||y   #logical or

a <- 1:28
print(a)

a <- 21:1
print(a)

#IN Operator
p1 <- 8
p2 <- 12
t <- 1:11
print(p1 %in% t)
print(p2 %in% t)

#different values with hetrogeneous datatypes 1 dimension
list1 <- list(c(2,3,4),23.4,19.1,sin)
length(list1)
print(list1)


#matrix diff values homogeneous datatypes and 2 dimensional
#default the distribution is column wise
M = matrix( c('a','a','b','c','b','a'), nrow=2, ncol=3,byrow=TRUE)
M = matrix( c('a','a','b','c','b','a'), nrow=3, ncol=2)
print(M)


#Array 
#collection of homogeneous datatypes
#1 dimension
#data distribution is col-wise
#no byrow=TRUE in array
a <- array(c('green','yellow','black'),dim=c(3,3,3)) #in dim( rows , col , no. of matrices)
print(a)

#data-frames is collection of heterogeneous datatypes we can also put  homegeneous datatypes..

#Factor datatype
BMI <- data.frame(
  gender=c("Male","Male","Female"),
  height=c(152,171.5,165),
  weight=c(81,93,78),
  Age=c(42,38,26)
)
BMI$gender <- as.factor(BMI$gender)   #dataset.colname $==access_operator
print(BMI)
summary(BMI)
nrow(BMI)        #rows are observation
ncol(BMI)        #columns are variables
dim(BMI)
str(BMI)
BMI$weight

#create an employee table for 6 col and 5 rows and show distinct department
Employee <- data.frame(
  emp_id=c(1221,1222,1223,1224,1225,1226),
  emp_name=c("harry","david","Niel","Nichoel","Shyam","Ram"),
  phone=c(12345,234567,567890,45678,345678,45678),
  add=c("tvdtd","yetety","ueytntf","yt","yrne","wgt"),
  department=c("research","design","workshop","marketing","data analysts","Advisory")
)
Employee$emp_id <- as.factor(Employee$emp_id)
print(Employee)
summary(Employee)
nrow(Employee)
ncol(Employee)
dim(Employee)
str(Employee)
Employee$emp_id

# range 
v<-3.4:12.4
print(v)

#sequence
print(seq(4,8, by=0.5))         #first method

seq(1,3,by=0.2)                 #second method

# the logical and numeric values are converted into characters
s <- c('apple','red',5,TRUE)
print(s)


# Accessing vector elements using position  (there is no zero index)
t <- c("Jan","Feb","March","April","May","June","July","August")
s <- t[c(1,5,3)]
print(s)            # syntax: vector_name[c(indexes)]

#Accessing vector elemnts using logical indexing (whereever the index is true the output includes that index)
v <- t[c(TRUE, FALSE, TRUE, TRUE, FALSE, TRUE, FALSE, TRUE)]
print(v)

# Accessing vector using negative indexing
n <- t[c(-2,-3)]          #the indexes with negative sign infront gets excluded
print(n)

# Accessing using decimal values (e.g we put index 2.3 so it will basically round off it)
d <- t[c(2.3,5.5)]
print(d)

#Sorting the elemennts of the vectors
v <- c(3,4,2,8,4,9,0,5,3,6)
sort.result <- sort(v)
print(sort.result)

#Sorting in reverse order
revsort.result <- sort(v, decreasing = TRUE)
print(revsort.result)

#again doing it in increasing order
sort1.result <- sort(v,decreasing = FALSE)
print(sort1.result)

#Sorting thr character variable
v <- c("Red","Blue","Orange","Magenta")
sort.result <- sort(v)
print(sort.result)


#modifying vector elements
x<- c(-3,-2,4,-5,8,6,1)
x[2]<-55 ; x        #modifies 2nd element
x[1]<-1 ; x         #modifies 1st element
x[x>0]<-3 ; x       #modifies every index with value greater than 0 to3
x <-x[1:4] ;x       # truncate (show elements from 1 to 4)
x <-x[4:1];x

#                               L I S T S

x <- list("a" = 2.5, "b" = TRUE,"c" = 1:3)  #naming the list elements
x
str(x)                   #print datatype
x <- list(2.5,TRUE,1:3)
x
list_data <- list("Red", "Green", c(21,32,11), TRUE, 51.23, 119.1)
list_data


#create list containing a vector, a matrix and a list
list_data <- list(c("Jan", "Feb", "Mar"), matrix(c(4,3,5,8,1,5),nrow=2), list("green",12.3))
list_data

#Give name to the elements of lists
names(list_data) <- c("1st quater","A matrix","Inner list")

#show list
print(list_data)
length(list_data)

list_data


new_list <- c("hello","world","!") ; new_list

#Add elemnts at the end of the list
new_list[4] <- "New 4th element"
print(new_list[4])
new_list

#Remove last element
new_list[4] <- NULL

#Print 4th element
new_list[4]

# Update element at 3rd index and add new data
new_list[3] <- "Updated data"
print(new_list[3])
new_list

list_data


list1 <- list("jan","feb","mar")
list2 <- list("1","2","3")
#merge two list
merge.list <- c(list1,list2)
merge.list



n=c(2,3,5)
s=c("aa","bb","cc","dd","ee")
b=c(TRUE,FALSE,FALSE,TRUE,TRUE)
x=list(n,b,s,3) #x contains copies of n s b
x
n

#list slicing
x[2]
x[[2]]

#retrieve a slice with multiple number (o/p must be :- bb ee)
x[[2]][c(2,5)]

#x[c(2,4)]  not correct as per the requirement
#reference a list member directly
x[[2]]
#can modify its content directly (update aa with ta)
x[[2]][1] = "ta"
x[[2]]
#write a command to print the value cc and ee from the list 
x[[2]][c(3,5)]
#modifying the first element of the list
x[[1]][3]<- 10
x
x[[1]]<-10
x
s


# Attach detach
v = list(alice=c(2,3,5), john=c("aa","bb"))
v
v[["alice"]]
v$alice
attach(v)
alice             #here we can access it without any access operator
john
detach(v)



#convert lists to vectors 
#create list
list1 <- list(c(1:10))
list2 <- list(c(12:14))

#convert list to vector
v1 <- unlist((list1))
v2 <- unlist((list2))

#                             <- M A T R I C E S ->
# MATRIX in details 
#Elements are sequentially by row

M <- matrix(c(3:14) , nrow = 4)
print(M)

#Elements are arranged sequentially by column
N <- matrix(c(3:14), nrow = 4, byrow = FALSE)
print(N)
N <- matrix(c(3:14), nrow=4, byrow = TRUE)
print(N)

#Define the rows and column names
rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")

# assign the row and column names after creation of matrix
P <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(rownames,colnames))
print(P)

#Access the elements at 3rd column and 1st row
print(P[1,3])

#Access the element at 2nd column and 4th row
print(P[4,2])

#Access only 2nd row 
print(P[2,])

#Access only 3rd column
print(P[ ,3])

# Create 2x3 matrix
matrix1 <- matrix(c(2,4,1,5,7,6),nrow = 2)
matrix1

matrix2 <- matrix(c(2,3,4,5,6,7), nrow = 2)
matrix2

# Applying all arithmetic operation on these two matrices
#Add the matrices
result <- matrix1 + matrix2
cat("Result of addition","\n")
print(result)

# Giving dim_names after creation of matrix
A = matrix(c(2,3,4,5,6,7), nrow = 2, ncol = 3, byrow = TRUE) #fill matrix by rows
A
A[2,3]         # element at 2nd row, 3rd column
A[2,]          #the 2nd row
A[,3]          #the 3rd column
A[,c(1,3)]     #print 1st and 3rd col

dimnames(A) = list(c("row1","row2"),c("col1","col2","col3"))
A
colnames(A)
rownames(A)
A["row2", "col3"] #element at 2nd row, 3rd column

#replace the index location with naming convention of the matrix
A[2,3]
A[2,]          
A[,3]          
A[,c(1,3)]

t(A)     # transposes the matrix

x <- c(1,2,3,4,5,6)
class(x)
dim(x) <- c(2,3)
x
class(x)
x[c(1,2),c(2,3)]   # select row 1 & 2 and col 2 & 3
x[c(1,2),]         # leaving col field blank will select entire col
x[,]               # leaving row as well as column field blank will select entire matrix
x[-1,]             # select all the rows except first 
x[2,2]             # modify a single element 
x[x<4]             # 


#                         <-  rbind   &  cbind  -> 

# The columns of two matrix having the same number of rows can be combined into a larger matrix
A = matrix(c(2,4,3,1,5,7),nrow = 3, ncol = 2)
A
B = matrix(c(7,4,2), nrow = 3, ncol = 1)
B
cbind(A,B)

# similarly we can rows of two matirce if they have same number of columns
C = matrix(c(6,2), nrow = 1, ncol = 2)
C
rbind(A,C)


#                          A R R A Y S
#array(data = NA, dim = length(data),dimname = NULL)
# Create two vectors of different lengths.(Naming columns and Rows)
vector1 <- c(2,9,6)
vector2 <- c(10,15,13,16,11,12)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("MATRIX-1","MATRIX-2")

#Take these vectors as input to the array
result <- array(c(vector1,vector2),dim = c(3,3,2),dimnames = list(row.names,column.names,matrix.names))

print(result)

#Print the third row of second matrix of array (Accessing)
print(result[3,,2])        # 3rd row ,all columns of second matrix


# Print the elements in the 1st row and 3rd column of the 1st matrix
print(result[1,3,1])


# create a ordinal categorial vector 
day_vector <- c('evening','morning','afternoon','midday','midnight','evening')
day_vector

#convert day_vector to a factor with ordered levels
factor_day <- factor(day_vector, order = TRUE, levels = c('morning','midday','afternoon','evening','midnight'))
factor_day

summary(factor_day)

#Generating Factor levels :  syntax: gl(n, k, labels)
v <- gl(3,4,labels= c("India","USA","Russia"))
print(v)
Big_Data <- gl(3,2,labels=c("Hadoop","Spark","Flink"))
print(Big_Data)

x <- factor(c("single","married","married","single"))
x
x <- factor(c("single","married","married","single"),levels = c("single","married","divorced"));
x
str(x)
x[3]
x[c(2,4)]
x[-1]
x[2] <- "divorced"     #modify second element
x
x[3] <- "widowed"      #cannot assign values outside levels
x
#levels(x) <- c(levels(x))

#                                Data Frames
#create a,b,c, d variables
a <- c(10, 20, 30, 40)
b <- c('book', 'pen', 'textbook', 'pencil_case')
c <- c(TRUE,FALSE,TRUE,FALSE)
d <- c(2.5, 8, 10, 7)
 #Join the variables to create a data frame
df <- data.frame(a,b,c,d)
df

# Join the variables to create a data frame 
df <- data.frame(a,b,c,d)
df

#Name the data frames
names(df) <- c('ID','items','store','price')
df

#print str
str(df)

#select row 1 in col2
df[1,2]

#select row 1 to 2
df[1:2,]

#select column 1
df[,1]

#select row 1 to 3 and column 3 to 4
df[1:3, 3:4]
df[1:3, c(2,4)]

#slice with column name
df[,c('ID','store')]

#create new vector


df$quantity <- quantity
quantity <- c(10,35,40,45)
df$quantity <- quantity
df
#select the column ID
df$ID

x <- data.frame("SN" = 1:2, "Age" = c(21,15), "Name" = c("John", "Dora"))
str(x)      

x <- data.frame("SN" = 1:2, "Age" = c(21,15), "Name" = c("John", "Dora"), stringsAsFactors = FALSE)
str(x)

x["Name"]
x$Name
x[["Name"]]
x[[3]]
x
x[1,"Age"] <- 20; x
rbind(x,list(1,16,"Paul"))
cbind(x,State=c("NY","FL"))
x$state <- c("NY","FL"); x
x$State <- NULL
x
x <- x[-1,]
x


#                                   UNIT - 3
#        WHILE LOOP
i <- 1
while(i < 6){
  print(i)
  i=i+1
}

#        for loop
x <- c(2,3,5,9,8,12,5)
count <- 0
for(val in x){
  if(val %%  2 == 0) count = count + 1
}
print(count)

#       if command
if(x > 0){
  print ("hello")
}

#       if else
x <- 5
if(x >0){
  print("Non-negative number")
} else{
  print("Negative number")
}

#       if.else ladder
x<-0
if(x<0){
  print("Negative Number")
}else if(x>0){
  print("Positive Number")
}else{
 print("zero") 
}

# break statement
x <- 1:5
for(val in x){
  if(val == 3){
    break
  }
  print(val)
}

#next statement
x <- 1:5
for(val in x){
  if(val == 3){
    next
  }
  print(val)
}

#repeat loop
x <- 1
repeat {
  print(x)
  x = x+1
  if (x==6){
    break
  }
}

#switch case
switch(expression,list)
#example
switch(2,"red","green","blue")
switch(1,"red","green","blue")
switch(4,"red","green","blue")
x <- switch(0,"red","green","blue")
x
switch("color","color" = "red", "shape" = "square" , "length" = 5)
switch("length", "color" = "red","shape" = "square", "length" = 5)

x <- switch(
  3,
  "my",
  "first",
  "switch",
  "code"
)
print(x)

y <- "12"
x <- switch(
  y,
  "9" = "Good morning",
  "12" = "Good aafternoon",
  "15" = "Good afternoon",
  "17" = "Good night"
)
x

# Examples using while 
# check arm-strong number

#take input from user
num = as.integer(readline(prompt = "Enter a number: "))
# Initialize sum
sum = 0
# Find the sum of cube of digits
temp = num
while(temp > 0){
  digit = temp %% 10
  sum = sum + (digit ^ 3)
  temp = floor(temp / 10)
}
# Display the result
if(num == sum){
  print(paste(num,"is a armstrong number"))
} else{
  print(paste(num,"is not an armstrong number"))
}



# Check Fibonacci Series
nterms = as.integer(readline(prompt ="How many terms ?"))
# first two terms
n1 = 0
n2 = 1
count = 2
# check if the number of terms is valid
if(nterms <= 0){
  print("Please enter a positive integer")
} else{
  if(nterms == 1){
    print("Fibonnaci Sequence: ")
    print(n1)
  } else{
    print("Fibonacci Sequence: ")
    print(n1)
    print(n2)
    while(count < nterms){
      nth = n1 + n2
      print(nth)
      #update values
      n1 = n2
      n2 = nth
      count = count + 1
    }
  }
}

#---------------------------------- F U N C T I O N  ----------------------------------
# (function_name <- function(arg_1, arg_2 .....){Function Body})
#create a function to print squares of number in sequence
fun <- function(a){
  for(i in 1:a){
    b <- i^2
    print(b)
  }
}

#call the function
fun(4)


#create a function without an argument
fun <- function(){
  for(i in 1:10){
    print(i^2)
  }
}
# Call a function without calling an argument
fun()


# create a function with an argument
fun <- function(a,b,c){
  result <- a*b+c
  print(result)
}
#call th function by position of argument
fun(6,7,15)

#call the function by names of the argument
fun(a = 6, b = 7, c = 15)

#call function with default argument
#create a function with argument
fun <- function(a = 8, b = 10){
  result <- a * b
  print(result)
}
# call the function without giving any argument
fun()

# call the function with giving new values of the argument
fun(12,5)    # it overwrites the value of variable..



#types of function

#mathematical functions
#  absoute  (abs())
x <- 4
print(abs(x))
#  sqrt     (sqrt())
x <- 4
print(sqrt(x))
#  ceiling  (cieling())
x <- 4.5
print(ceiling(x))
#  floor
print(floor(x))
#  trunc()                  # round off(down) the value
x <- c(1.2,2.5,8.1)
print(trunc(x))
#  round(3.5654, digits = 2)
round(3.234, digits=2)
#  trignometric functions
x <- 4
print(cos(x))
print(sin(x))
print(tan(x))





#string function
#  substring function
x <- "abcdef"
substr(x,2,4)
substr(x,2,4) <- "22222"     # it replace the selected value from the string
x
#  grep function  (can be both case sensitive and case in-sensetive by using ignore.case = TRUE)
st1 <- c('sdf','sdfg','sdfgh')
pattern<- 'sdf'
print(grep(pattern, st1, ignore.case = TRUE))
print(grep(pattern, st1, ignore.case = FALSE))

#  substitute function (replace the existing text to new text)
st1 <- "england is beautifu but not a part ok EU"
sub("England", "UK","st1")
#  split function (split the string into character also include space)
a<-"split all the characters"
print(strsplit(a,""))
#  toupper
st1<- "shUbhaM"
print(tolower(st1))

#  tolower
st1<- "shUbhaM"
print(toupper(st1))





#Statistical Function
#  mean
a <- c(0:10, 40)
a 
xm<-mean(a)
print(xm)

#  standard deviation
xm <- sd(a)
print(xm)

#  range
xm <- range(a)
print(xm)

#  sum
xm <- sum(a)
print(xm)

#  minimum
xm <- min(a)
print(xm)

#  maximum
xm <- max(a)
xm

#  seq
a <- seq(1,10,2)
a

#  rep
y <- rep(1:3,2)
y

#  cut
x <- c(3,2,5,2,6,8,4,5,2,7,2,9)
y <- cut(x,3)
y




#                             Working with Data set


# wizard pending 
# Get and print current working directory
print(getwd())

#set current working directory
setwd("D:/SEM 4/R language")

# Get and print current working directory
print(getwd())
data <- read.csv("sales dataset.csv")
View(data)

#import data set
print(is.data.frame)
print(is.data.frame(data))
print(ncol(data))
print(nrow(data))
str(data)
summary(data)

# get the max sales amount
sale <- max(data$Sales_Amt)
print(sale)

# get all the details those having max sales amount
# return sunsets of vector, matrices or data frames which meets conditions.

retval <- subset(data, Sales_Amt == max(Sales_Amt))
View(retval)

#fetch only the details of finance department
retval <- subset(data, Department == "Finance")
View(retval)

#fetch the details for finance department who have sales amount greater than 1000
retval <- subset(data, Department == "Finance" & Sales_Amt > 1000)
View(retval)

info <- subset(data, data$Department == "Finance" & data$Sales_Amt > 1000)
View(info)

# fetch selected column
newdata <- subset(data, data$Sales_Amt > 1000 & data$Department == "Finance", select = c('Employee.Name', 'Employee.Country'))
View(newdata)

#fetch all the details after 1 jan 2014
dates <- subset(data, as.Date(data$Sales.Date,"%d-%m-%Y") > as.Date("01-01-2014","%d-%m-%Y"))
View(dates)
#default format is "%Y-%m-%d".......
dates <- subset(data, as.Date(data$Sales.Date,"%d-%m-%Y") == as.Date("02-01-2014","%d-%m-%Y"))
View(dates)




#<-----------------------------  D A T A S E T S  -------------------------------------------->

# Working with built in data sets
data()
View(mtcars)
head(mtcars,6)
tail(mtcars,4)
nrow(mtcars)
ncol(mtcars)
summary(mtcars)
str(mtcars)
# explore more datasets

data(iris)
data(ToothGrowth)
head(ToothGrowth,15)
data(PlantGrowth)
data(USArrests)
data("airquality")
View("airquality")
View(airquality)
data(airquality)
View(airquality)
head(airquality)

subset(airquality, Temp > 80, select = c(Ozone,Temp,Wind))
subset(airquality, Day == 1, select = -Temp)
subset(airquality, select = Ozone:Wind)

# with command 
with(airquality, subset(Ozone, Temp >80)) #tells which element in ozone have temperature more than 80

#which command
x <- c(1,3,5,2,2)
x
which(x == 5)    # it gives at which index the condition is true
which(x!=5)      
datasets::npk
?npk
which(npk$yield == 62)
which((npk$yield == 48.8) & (npk$N == 1))
which(npk$yield == max(npk$yield))

#Make a subject of the days where the value of ozone is in the range 30-50
with(airquality, subset(Day,(Ozone >= 30) & (Ozone <= 50)))
# or
dayz <- subset(airquality, Ozone >= 30 & Ozone <= 50,select = c(Ozone, Day))
dayz
#which((npk$yield > 30) & (npk$yield < 50 ))


mtcars["Valiant", "mpg"]   #a single element
mtcars[ , c("mpg","wt")]   # all rows and column
mtcars[1:6, ]              # rows 1-6, all columns
mtcars[ , ]                # everthing
mtcars[1:6, c("mpg","wt")] #[rows,column]
subsets(mtcars, subset = carb >= 6, select=c("mpg","wt"))   #first is row second is for col


