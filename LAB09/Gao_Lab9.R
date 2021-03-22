# Chenchen Gao
# EBIO 4420
# Lab 9
# Mar 19, 2021

#########
##Preliminary Step: import the camera trap data file
camData <- read.csv("~/Documents/STUDY/EBIO/EBIO4420/CompBioLabsAndHW/LAB09/Cusack_et_al_random_versus_trail_camera_trap_data_Ruaha_2013_14.csv", stringsAsFactors = F)

#########
##Problem 1. Creates the DateTime column as characters and convert those dates and times into actual objects that represent time.

#First, try methods on a small, bite sized piece of data, and find a working method
#1. Create a character string
smallVec <- camData$DateTime[1:5]
smallVec

#2. Use strptime()
small <- strptime(smallVec, format = "%d/%m/%Y %H:%M")
small

#3. Use method on the whole DateTime vector
DateTime <- camData$DateTime
DateTime#Create a vector
Date <- strptime(DateTime, format = "%d/%m/%y %H:%M")
Date#Converted date and time
print(class(Date))

#########
# Problem 2. Find out which were not converted properly from problem 1

which(is.na(Date)) #I think this is not working since it can't shows the right answer. I tried the different ways but still can't figuring out the reason.




#########

# Problem 3.  Create an ACCURATE vector of dates and times

# 


#########

# Problem 4.  Examine at the average time between observations for a given combination of Season, Station, and Species

# 

