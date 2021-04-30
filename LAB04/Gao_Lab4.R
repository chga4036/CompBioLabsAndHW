# Chenchen Gao
# EBIO 4420
# Lab4
# Feb 12, 2021

#PART I: Practice writing “for loops”
#1: “for loop” that prints the word “hi” 10 times
for (hi in c(1:10))
{
  print ("hi")
}

#2: Calculate Tim money each week for the next 8 week
allowance <- 5
gum <- 1.34

gain <- allowance - (2*gum)
for (n in seq(1, 8))
{
  money <- 10 + (n* gain)
  print (money)
}

#3: Estimate population size each year for the next seven years
pop <- 2000
rate <- 1-0.05
for (n in seq(1, 7))
{
  size <- pop * (rate)^n
  print (size)
}

#4: The discrete-time logistic growth equation problem
# Equation: n[t] <- n[t-1] + ( r * n[t-1] * (K - n[t-1])/K )
n[1] <- 2500 #the abundance of the population at time 1
K <- 10000 #environmental carrying capacity for the population
r <- 0.8 #intrinsic growth rate of the population
for (t in (2:12))
{
  n[t] <- n[t-1] + ( r * n[t-1] * (K - n[t-1])/K )
  print (n[t])
}
n[12] #the value of n[12]


#PART II: Practice writing “for loops” and storing the data produced by loops in arrays.
#5: Array indexing using for loops
#5a: Make a vector of 18 zeros by using the rep command
data <- rep(0, 18)
data

#5b: Make the loop store 3 times the ith value of the iterator variable (i) in the ith spot of the vector in part a
for ( i in seq(1,18) ) 
{ 
  data[i] <- i*3
}
data

#5c: Make a new vector of zeros start with one
ndata <- c(1, rep(0, 17))
ndata

#5d: Make the loop the value stored in the vector is equal to one plus twice the value of the previous entry
for ( i in seq(2,18) ) 
{ 
  ndata[i] <- 1 + (2 * (ndata[i-1]))
}
ndata

#6: Makes a vector of the first 20 Fibonacci numbers
list <- c(0, rep(1, 19))
for ( i in seq(3,20) ) 
{ 
  list[i] <- ((list[i-2]) + (list[i-1]))
}
list

#7: Redo question 4, store all the data, and make a plot of the results
n[1] <- 2500 #the abundance of the population at time 1
K <- 10000 #environmental carrying capacity for the population
r <- 0.8 #intrinsic growth rate of the population
for (t in c(2:12))
{
  n[t] <- n[t-1] + ( r * n[t-1] * (K - n[t-1])/K )
  print (n[t])
}
#make two vectors of "time" and "abundance"
Time <- (1:12)
abundance <- n[time]
plot1 <- plot(Time, abundance,
     main="Population Abundance Over Time",
     ylab="Population Abundance")


#PART III: Optional question
#8: Two extra files
#8a: Read the data into RStudio
CO2 <- read.csv("~/Documents/STUDY/EBIO/EBIO4420/CompBioLabsAndHW/LAB04/CO2_data_cut_paste.csv")

#8b: Converting data to "numeric"
#i:read.csv()
CO21 <- read.csv("~/Documents/STUDY/EBIO/EBIO4420/CompBioLabsAndHW/LAB04/CO2_data_cut_paste.csv", header = TRUE, colClasses=c(rep("numeric", 7)))
sapply(CO21, class)

#ii:as.numeric()
CO2[2:7] <- lapply(CO2[2:7], as.numeric)
sapply(CO2, class)
