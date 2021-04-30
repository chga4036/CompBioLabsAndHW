## Chenchen Gao
## EBIO 4420
## Lab8
## Mar 12, 2021


### Problem 3: Recall problem #7 from Week 4's lab
#### Function Defination: the discrete-time logistic growth equation, used in many models of population abundance over time.

#### Steps:
* a. Create a new script contain code
* b. Turn the logistic growth model code into a function
* c. Add code to the function so that it produces a plot
  * The abundance of the population at time 1
  `n[1] <- 2500` 
  * Environmental carrying capacity for the population 
 `K <- 10000`
  * Intrinsic growth rate of the population
  `r <- 0.8`
  *  Make two vectors: t for Time; n for abundance
    `t <- 1:12` 
    `n[t] <- n[t-1] + ( r * n[t-1] * (K - n[t-1])/K )`
  *plot results
  `plot(t, n[t]) `
  *make matrx and get result
   `myMatrix <- cbind(t, n[t])`
   ` return(myMatrix)`
  * Collect together into a function
  ```
  growthFunction <- function( t, n ){
    n[1] <- 2500 
    K <- 10000 
    r <- 0.8 
    t <- 1:12 
    n[t] <- n[t-1] + ( r * n[t-1] * (K - n[t-1])/K )
    
    plot(t, n[t]) 
    
    myMatrix <- cbind(t, n[t])
    return(myMatrix) 
  }  
  ```
  
* d. Following the function, write a line(s) of code that calls the function 
```results <- growthFunction(10, 2)
```

* e. Write a line(s) of code that writes the data set to a file
```
colnames(results) <- c("time", "abundance")
setwd("~/Documents/STUDY/EBIO/EBIO4420/CompBioLabsAndHW/LAB08/")
write.csv(x = results, file = "myfile.csv", row.names = FALSE)
```
* BONUS 1: include a hyperlink points to the source file for Lab
The [source file](https://github.com/flaxmans/CompBio_on_git/blob/main/Labs/Lab08/Lab08_documentation_and_metadata.md)

* BONUS 2: include image
![Plot graph:  abundance over time][graph]
[graph]: http://127.0.0.1:47293/graphics/5c1b2dcb-c0b7-41a6-a638-c0e34a11c314.png






#Function defination: the discrete-time logistic growth equation, used in many models of population abundance over time.
#a. Create a new script contain code
#b. Turn the logistic growth model code into a function
#c. Add code to the function so that it produces a plot

n[1] <- 2500 #the abundance of the population at time 1
  K <- 10000 #environmental carrying capacity for the population
  r <- 0.8 #intrinsic growth rate of the population


#d. Following the function, write a line(s) of code that calls the function 
results <- growthFunction(10, 2)


#e. Write a line(s) of code that writes the data set to a file
colnames(results) <- c("time", "abundance")
setwd("~/Documents/STUDY/EBIO/EBIO4420/CompBioLabsAndHW/LAB08/")
write.csv(x = results, file = "myfile.csv", row.names = FALSE)
