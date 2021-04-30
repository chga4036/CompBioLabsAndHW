# Chenchen Gao
# EBIO 4420
# Lab7
# Mar 5, 2021



#########

# Problem 1.  Area of a triangle when given base and height

# Function definition:
# Hypothetical Problem: Write a function that calculates the area of a triangle when given base and height:
triangleArea <- function(b, h) {
  # base b and height h, must be given, multiple two sides
  twosides <- b * h 
  # multiple by 0.5
  Area <- twosides * 0.5
  return( Area )
}

# Demonstration of usage:
# Suppose a triangle with base of 10 units and height of 9 units
triangleArea(10, 9)


########

# Problem #2.  Our own absolute value function

# Function definition:
# Hypothetical Problem: Write a function that calculates and returns absolute values:
if (x < 0)
{
  print (x * -1)
} else {
  print(x * 1)
}

# Demonstration of usage:
# 2a. Write function named myAbs() and test by numbers 5, -2.3
myAbosolute <- myAbs(x) 
  if (x < 0)
{
  print (x * -1)
} else {
  print(x * 1)
}
 
myAbs(5)
myAbs(-2.3)

# 2b. Work on vectors

vector <- c(1.1, 2, 0, -4.3, 9, -12)

for(i in 1:length(vector))
{
if ( vector[i] < 0 )
{
  print (vector[i] * -1)
} else {
  print(vector[i] * 1)
}
}



#########

# Problem 3.  Recall the "Fibonacci sequence"

# Function definition:
# Hypothetical Problem: Write a function that returns a vector of the first n Fibonacci numbers:
n[n >= 3] 
list <- c(0, rep(1, n-1))
for ( i in seq(3,n) ) 
{ 
       list[i] <- ((list[i-2]) + (list[i-1]))
 }


# Demonstration of usage:
# Suppose n is 4 and starting number is 0
n <- 4 
list <- c(0, rep(1, n-1))
for ( i in seq(3,n) ) 
{ 
  list[i] <- ((list[i-2]) + (list[i-1]))
}
list

# Bonus 3a: make your function work for n = 1 and n = 2. 
# When n=1
n <- 1 
list1 <- c(0, rep(1, n-1))
for ( i in seq(0,n) ) 
{ 
  list1[i] <- ((list[i-2]) + (list[i-1]))
}
list1

# When n=2
n <- 2 
list2 <- c(0, rep(1, n-1))
for ( i in seq(0,n) ) 
{ 
  list2[i] <- ((list[i-2]) + (list[i-1]))
}
list2

# Bonus 3b: make your function check user input,
list3 <- c(0, rep(1, n-1))
for( i in seq(3,n)) {
  if ( list3[n > 0] ) {
    list3[i] <- ((list[i-2]) + (list[i-1]))
  } else {
    list3[i] <- NA
  }
}
list3

#########

# Problem 4.  Calculate problems

# 4a.
# Function definition:
# Hypothetical Problem: Write a function that returns the square of the difference between two numbers:
squareofdiff <- function(x, y) {
  # for any two numbers x and y, must be given, get difference
  difference <- x - y 
  # square
  sfunction <- difference^2
  return( sfunction )
}

# Demonstration of usage:
# Suppose two numbers are 3 and 5
squareofdiff(3, 5)
# Suppose the first argument is the vector c(2, 4, 6) and the second argument is the number 4
squareofdiff(c(2, 4, 6), 4)


# 4b. Arithmetic mean
# Function definition:
# Hypothetical Problem: Write a function calculates the average of a vector of numbers:
ave <- function(x) {
  #a vector of numbers must be given, get sum, and divide
  avefunction <- sum(x)/length(!is.na(x))
  return( avefunction )
}

# Demonstration of usage:
# Suppose there is the vector c(5, 15, 10)
ave(c(5, 15, 10))
# Work on csv data
Data <- read.csv("~/Documents/STUDY/EBIO/EBIO4420/CompBioLabsAndHW/LAB07/DataForLab07.csv", sep="")
X <- Data$x
ave(X)


# 4c. Sum of squares
# Function definition:
# Hypothetical Problem: Write a function that calculates and returns the sum of squares:
sumsquare <- function(x) {
  # find the mean
  average <- sum(x)/length(!is.na(x)) 
  # the mean is subtracted from the data point, and the resulting difference is squared
  sqaured <- (x-average)^2
  # Sum all of these squared differences
  Sum <- sum(sqaured)
  return( Sum )
}

# Demonstration of usage:
# Work on csv data
Data <- read.csv("~/Documents/STUDY/EBIO/EBIO4420/CompBioLabsAndHW/LAB07/DataForLab07.csv", sep="")
X <- Data$x
sumsquare(X)
