# install.packages("dplyr")
library(MASS)
library(dplyr)

# MASS::select # from the package MASS, import the select fxn

# data <- read.csv("C:/Users/Peter/Documents/College Documents/DATA 180/Data 180 Peter Guma/DATA-180-PETER-GUMA")
# I don't have that data set, so ignore it

# plot(density(data(price)))

head(Cars93)

Cars93_Ex1 <- select(Cars93,Type,EngineSize,DriveTrain,MPG.city)
head(Cars93_Ex1)

Cars93_Ex2 <- filter(Cars93,Type=="Small") #subsetting by rows
head(Cars93_Ex2)

Cars93_Ex3 <- select(filter(Cars93, Type=="Small"), Model, EngineSize, Horsepower, MPG.highway)
head(Cars93_Ex3) #subsetting by columns

Cars94_Ex4 <- select(filter(Cars93, Horsepower>150),Model,EngineSize,Horsepower,MPG.highway)
head(Cars94_Ex4)

Cars93_Ex5 <- select(filter(Cars93,Horsepower>120 & Type=="Small"), Model,EngineSize,Horsepower,MPG.highway)
head(Cars93_Ex5)

Cars93_Ex6 <- select(filter(Cars93, Type=="Midsize"|Cylinders==4), Model,Type,EngineSize,Cylinders,Horsepower,MPG.highway)
head(Cars93_Ex6)

Cars93_Ex7<-select(filter(Cars93, Type %in% c("Sporty","Compact") & Horsepower >=120), Model,Type,EngineSize,Cylinders,Horsepower,MPG.highway)
head(Cars93_Ex7)

Cars93_Ex2a <- select(filter(Cars93, Passengers==4), Model, EngineSize)
head(Cars93_Ex2a)
