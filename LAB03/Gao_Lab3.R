# Chenchen Gao
# EBIO 4420
# Lab3
# Feb 5, 2021

#PART I:
#Step 1: Make two variables
chips <- 5
guests <- 8

#Step 2: New variable for average bags of chips per guests eat
ChipsPereat <- 0.4

#Step 3: Calculate the expected amount of leftover chips
Leftchips <- chips - ChipsPereat * (guests + 1)



#PART II:
#Step 1: Make four vectors containing his/her/their rankings in the order for films
Self <- c(7,9,8,1,2,3,4,6,5)
Penny <- c(5,9,8,3,1,2,4,7,6)
Lenny <- c(6,5,4,9,8,7,3,2,1)
Stewie <- c(1,9,5,6,8,7,2,3,4)

#Accessing elements of vectors
#Step 2: Using indexing access Lenny and Penny’s ranking for Episode IV
PennyIV <- Penny[4]
LennyIV <- Lenny[4]

#Step 3:Concatenate 4 sets of rankings into a single data object
filmrank <- cbind(Self, Penny, Lenny, Stewie) 

#Step 4:Inspect difference
str(Penny)
str(PennyIV)
str(filmrank)
##The difference between three data objects is the number and information we got. For "Penny", we only got 9 number which represent Penny's ranking preference; "PennyIV" only shows one number whihc represents the Penny's ranking for fourth movie; "filmrank" includes both numbers and characters which includes all four persons' ranking preference.

#Step 5:Data frame
DFilm1 <- data.frame(Self, Penny, Lenny, Stewie)
DFilm2 <- as.data.frame(filmrank)

str(filmrank)
str(DFilm1)
str(DFilm2)
## They both have 9 rows and 4 columns of data; The class of "filmrank" created by "cbind()" is "double", but the class of "DFilm1" created by "data frame" is "list".

#Step 6: Make a vector of the Episode names
EName <- c("I","II","III","IV","V","VI","VII","VIII","IX")

#Step 7: Name the rows of the "filmrank", "DFilm1", "DFilm2"
row.names(filmrank) <- EName
row.names(DFilm1) <- EName
row.names(DFilm2) <- EName


#Accessing elements of matrices and data frames
#Step 8: Access the third row of the "filmrank"
row3 <- filmrank[3,]
row3

#Step 9: Access the fourth column from "DFilm1" 
row4 <- DFilm1[,4]
row4

#Step 10: Access your ranking for Episode V.
SV <- filmrank[5,1]
SV

#Step 11: Access Penny’s ranking for Episode II.
PII <- filmrank[2,2]
PII

#Step 12: Access everyone’s rankings for episodes IV – VI.
EIVI <- DFilm1[4:6,]
EIVI

#Step 13: Access everyone’s rankings for episodes II, V, and VII.
EIIVII <- DFilm1[c(2,5,7),]
EIIVII

#Step 13: Access rankings for just Penny and Stewie for just episodes IV and VI.
PSIVI <- DFilm1[c(4,6),3:4]
PSIVI

#Step 14: Switch Lenny’s rankings for Episodes II and V.
filmrank
library(seqinr)
swap(filmrank[2,3], filmrank[5,3])
print(filmrank)

#Step 15: Switch by matrix using "filmrank" and undo last steps
filmrank
library(seqinr)
swap(filmrank["II", "Lenny"], filmrank["V", "Lenny"])
print(filmrank)

DFilm1
library(seqinr)
swap(DFilm1["II", "Lenny"], DFilm1["V", "Lenny"])
print(DFilm1)

# Step 16: Undo the switch made in step 14 by using "$"
DFilm1
library(seqinr)
swap(DFilm1$Lenny[2], DFilm1$Lenny[5])
print(DFilm1)

