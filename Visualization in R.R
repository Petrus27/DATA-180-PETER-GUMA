# Install library
install.packages("readxl")

#Call library
library("readxl")
library("MASS")

# Read in data from 

#1.
#SET WORKING DIRECTORY TO THE FOLDER WHERE THE DATASET IS
setwd("D:/Dickinson College Teaching/DATA 180")

read_excel("particulate data.xlsx") # Always keep in mind file extensions excel = .xlsx or .xls, Comma separated value = .csv

#2.
# READ DIRECTLY FROM THE FOLDER
p_data<-read_excel("D:/Dickinson College Teaching/DATA 180/particulate data.xlsx")

#3. Read CSV
p_data_csv = read.csv("D:/Dickinson College Teaching/DATA 180/particulate data.csv")

# Create your own dataset.

my_data<-data.frame(
  col_1 = c("A","B","C","D", "E"),
  col_2 = c(1,2,3,4,5),
  col_3 = c(1,12,3,4,5.4)
  
)
my_data
nrow(my_data)

# Create a vector of numbers
vec<-1:10
vec

stem(p_data$particulate_rounded_off)


# USING THE STACK METHOD

stripchart(Cars93$MPG.city,method="stack",pch=16,cex.axis=1.2,cex.lab=1.2,xlab = "Miles per Gallon")

stripchart(Cars93$Length,method="stack",pch=16,cex.axis=1.2,cex.lab=1.2,xlab="Length (inches)")


#USING THE JITTER METHOD
stripchart(Cars93$MPG.city,method="jitter",pch=16,cex.axis=1.2,cex.lab=1.2,xlab="Miles Per Gallon (city)")
stripchart(Cars93$Length,method="jitter",pch=16,cex.axis=1.2,cex.lab=1.2,xlab="Length (inches)")


#HISTOGRAM 
hist(p_data$particulate,cex.lab=1.2,cex.axis=1.2,col="lightgray",xlab="Particulate (g/gal)")

# Add a bounding box to the histogram.

#Specifying how many classes you want and how wide you want each class to be
hist(p_data$particulate,cex.lab=1.2,cex.axis=1.2,col="lightgray",breaks=seq(0,7,.5),xlab="Particulate (g/gal)")
box()

#Letting the software choose for you the width of the classes
hist(Particulate,breaks=14,col="lightgray",xlab="Particulate (g/gal)",cex.lab=1.2,cex.axis=1.3)



