# Chenchen Gao
# EBIO 4420
# Lab5
# Feb 19, 2021

#PART I: Practice simple conditionals
#1: Create a variable named x; write an if-else statement that checks and print message if the value is larger than 5. 
x <- 6
threshold <- 5
if (x > threshold)
{
  print (paste(("x is larger than"), threshold))
} else {
  print(paste("x is smaller than or equal to", threshold))
}

#2:Import the file "ExampleData.csv" and make a vector
Data <- read.csv("~/Documents/STUDY/EBIO/EBIO4420/CompBioLabsAndHW/LAB05/ExampleData.csv", sep="")
typeof(Data)
str(Data)
vector <- Data$x

#2a: Using a for() loop and changes every negative value to be NA
for(i in 1:length(vector))
{
   if(vector[i] < 0)
     {
     vector[i] <- NA
     }
}
vector #New vector with NA

#2b: Makes use of "logical" indexing, change all those NA values with NaN
nvector <- vector
nvector[is.na(vector)] <- NaN
nvector #New vector with NaN

#2c: Using a which() statement and integer indexing change all NaN values with a zero
zvector <- nvector
zvector[which(is.nan(nvector))] <- 0
zvector#New vector with 0

#2d: Use code to determine how many of the values fall in the range between 50 and 100.
vector <- Data$x
num <- (vector >= 50 & vector <= 100) 
sum(num) #498 values fall in the range between 50 and 100.

#2e: Create a new vector of data that has all the values in the range between 50 and 100. 
FiftyToOneHundred <- vector[num]

#2f: Save your vector to a file named "FiftyToOneHundred.csv".
setwd("~/Documents/STUDY/EBIO/EBIO4420/CompBioLabsAndHW/LAB05/")
write.csv(x = FiftyToOneHundred, file = "FiftyToOneHundred.csv")

#3: Import the data on CO2 emissions
CO2 <- read.csv("~/Documents/STUDY/EBIO/EBIO4420/CompBioLabsAndHW/LAB05/CO2_data_cut_paste.csv")

#3a: The first year for which data on "Gas" emissions were non-zero
G <- CO2$Gas
myThreshold <- 0
test <- which(G > myThreshold)
test
CO2$Year[test] #The first year is 1885

#3b: Which years were "Total" emissions between 200 and 300 million metric tons of carbon
T <- CO2$Total
emission <- which(T >= 200 & T <= 300) 
emission
CO2$Year[emission]# 1879, 1880, 1881, 1882, 1883, 1884, 1885, 1886, and 1887 satisfied the requirements.


#Part II: Loops + conditionals + biology
#1: Set up parameter values
totalGenerations <- 1000
p[0] <- 10		# initial predator abundance at time t = 1
n[0] <- 100 	# initial prey abundance at time t = 1
a <- 0.01 		# attack rate
r <- 0.2 		# growth rate of prey
m <- 0.05 		# mortality rate of predators
k <- 0.1 		# conversion constant of prey into predators
#2: Create a time vector and make two additional vectors to store results
t <- c(1:1000)
v1 <- n[t]
v2 <- p[t]

#3&4: Write a loop
threshold <- 0
for( t in c(1:1000)) {
  if ( n[t] < threshold | p[t] < threshold) {
    n[t] <- 0
    p[t] <- 0
    print ("0")
    print ("0")
  } else {
    n[t] <- n[t-1] + (r * n[t-1]) - (a * n[t-1] * p[t-1])
    p[t] <- p[t-1] + (k * a * n[t-1] * p[t-1]) - (m * p[t-1])
    print (n[t])
    print (p[t])
  }
}



#5: Make a plot of the abundances of prey and predators over time
t <- (1:1000)
plot(t, v1,type ="l", main="Abundances over Time", xlab="Time", ylab="Abundance")
par(new = TRUE)
plot(t, v1, type = "l")

#6: Make a matrix 
setwd("~/Documents/STUDY/EBIO/EBIO4420/CompBioLabsAndHW/LAB05/")
myResult <- cbind(t,v1, v2)
colnames(myResult) <- c("TimeStep","PreyAbundance","PreyAbundance")
myResults <- myResult
myResults[which(is.na(myResult))] <- 0
write.csv(x = myResults, file = "PredPreyResults.csv")
