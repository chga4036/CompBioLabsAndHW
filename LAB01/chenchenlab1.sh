## Lab1: Create new file by using csv file
## by Chenchen

tail PredPreyData.csv > chenchenlab1.csv

# This got a new data file with the last 10 lines

head -1 PredPreyData.csv | cat - chenchenlab1.csv > lab1.csv && rm -f chenchenlab1.csv

# Add header from orginal data file into the last data file to creat a new data file
 
