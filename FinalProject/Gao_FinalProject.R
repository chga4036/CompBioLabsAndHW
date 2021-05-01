# Chenchen Gao
# EBIO 4420
# Independent Project
# April 29, 2021

#################

#Create boxplots of sex hormone concentration vs months

#################

##Nanorana vicina
#import data
horwildNv <- read.csv("~/Documents/STUDY/EBIO/EBIO4420/CompBioLabsAndHW/FinalProject/horwild_Nv.csv")

#Create box plot
#Change the column names to just be number
colnames(horwildNv) <- c("hormone", "Mar/Apr","May/Jun","Jul/Aug","Sep/Oct")

# metl the dataframe for plotting
horwildNv.melt <- melt(horwildNv, id.vars = "hormone")
horwildNv.melt$variable <- factor(horwildNv.melt$variable, levels = c("Sep/Oct","Mar/Apr","May/Jun","Jul/Aug"))

#subset data to only  Estradiol or Testosterone
Estradiol <- subset(horwildNv.melt, hormone == "Estradiol")
Testosterone <- subset(horwildNv.melt, hormone == "Testosterone")

#Box plot for Estradiol
boxplot(value~variable,data=Estradiol, main="Estradiol of Nanorana vicina",
        xlab="Months", ylab="Hormone level (pg/ ml)")
regline1 <- lm(value ~ variable, data = Estradiol)
abline(regline1)


#Box plot for Testosterone
boxplot(value~variable,data=Testosterone, main="Testosterone of Nanorana vicina",
        xlab="Months", ylab="Hormone level(pg/ ml)")
regline2 <- lm(value~variable, data = Testosterone)
abline(regline2)


####################

##Allopaa hazarensis
#import data
horwildAh <- read.csv("~/Documents/STUDY/EBIO/EBIO4420/CompBioLabsAndHW/FinalProject/hormones_wild_Ah.csv")

#Create box plot
#Change the column names to just be number
colnames(horwildAh) <- c("hormone", "Mar/Apr","May/Jun","Jul/Aug","Sep/Oct")

# metl the dataframe for plotting
horwildAh.melt <- melt(horwildAh, id.vars = "hormone")
horwildAh.melt$variable <- factor(horwildAh.melt$variable, levels = c("Sep/Oct","Mar/Apr","May/Jun","Jul/Aug"))

#subset data to only  Estradiol or Testosterone
estradiol <- subset(horwildAh.melt, hormone == "estradiol")
testosterone <- subset(horwildAh.melt, hormone == "testosterone")

#Box plot for Estradiol
boxplot(value~variable,data=estradiol, main="Estradiol of Nanorana vicina",
        xlab="Months", ylab="Hormone level (pg/ ml)")
regline1 <- lm(value ~ variable, data = estradiol)
abline(regline3)


#Box plot for Testosterone
boxplot(value~variable,data=testosterone, main="Testosterone of Nanorana vicina",
        xlab="Months", ylab="Hormone level(pg/ ml)")
regline4 <- lm(value~variable, data = testosterone)
abline(regline4)



#################

#Create scatterplots of Mortality vs Temperature

#################

##Nanorana vicina
#import data
mortempNv <- read.csv("~/Documents/STUDY/EBIO/EBIO4420/CompBioLabsAndHW/FinalProject/mortemp_Nv.csv")

#Create scatterplot
#fit a regression
model <- lm(mortempNv$Mortality~mortempNv$Temp, data = mortempNv)

#create a scatterplot of mortality vs Tempereature for Nanorana Vicina
plot(mortempNv$Mortality~mortempNv$Temp, data = mortempNv, main = "Mortality of Nanorana Vicina", ylab= "Mortality", xlab = "Temperature(◦C) ")
abline(model, lwd=2, col = "red")
summary(model)

#Allopaa hazarensis
#import data
MortempAh <- read.csv("~/Documents/STUDY/EBIO/EBIO4420/CompBioLabsAndHW/FinalProject/Mortality_temps_Ah.csv", header=FALSE)

#Create scatterplot
# rename the colume name of dataframe for plotting
MortempAh = MortempAh[-1,]
library(plyr)
rename(MortempAh, c("V1"="Temp","V4"="Noofsurvived", "V5"="Mortality"))


model1 <- lm(MortempAh$Mortality~MortempAh$Temp, data = MortempAh)
#create a scatterplot of mortality vs Tempereature for Allopaa Hazarensis
plot(MortempAh$Mortality~MortempAh$Temp, data = MortempAh, main = "Mortality of Allopaa Hazarensis", ylab= "Mortality", xlab = "Temperature(◦C)")
abline(model, lwd=2, col = "red")
summary(model1) 



