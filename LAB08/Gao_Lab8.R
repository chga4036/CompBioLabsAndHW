# Chenchen Gao
# EBIO 4420
# Lab8
# Mar 12, 2021



#########

#Problem 3: Recall problem #7 from Week 4's lab (on writing loops). 

#Function defination: the discrete-time logistic growth equation, used in many models of population abundance over time.
#a. Create a new script contain code
#b. Turn the logistic growth model code into a function
#c. Add code to the function so that it produces a plot

growthFunction <- function( t, n ){
  n[1] <- 2500 #the abundance of the population at time 1
  K <- 10000 #environmental carrying capacity for the population
  r <- 0.8 #intrinsic growth rate of the population
  # make two vectors:
  t <- 1:12 #Time
  n[t] <- n[t-1] + ( r * n[t-1] * (K - n[t-1])/K )
  
  plot(t, n[t]) # plot results
  
  # make a matrix of results:
  myMatrix <- cbind(t, n[t])
  return(myMatrix) # return results
}

#d. Following the function, write a line(s) of code that calls the function 
results <- growthFunction(10, 2)


#e. Writes the data set to a file 
colnames(results) <- c("time", "abundance")
setwd("~/Documents/STUDY/EBIO/EBIO4420/CompBioLabsAndHW/LAB08/")
write.csv(x = results, file = "myfile.csv", row.names = FALSE)


