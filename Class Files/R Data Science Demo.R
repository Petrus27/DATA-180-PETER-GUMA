install.packages("randomForest")

library("MASS")
help(Cars93)
head(Cars93) # shows first 6 rows
# must run a library pack before calling a function

Cars93$Type

table(Cars93$AirBags)

nrow(Cars93)

ncol(Cars93)

barplot(table(Cars93$AirBags), ylab="Frequency", cex.lab=1.3)

colors()[1:40]

palette() # can change the default if you'd like

# palette(c("red2", "orchid2"))
# palette("default)

# barplot(sort...)


stem(Cars93$Weight)
ls(Cars93)


stripchart(Cars93$MPG.city,method="stack",pch=16, + cex.axis=1.2,cex.lab=1.2,xlab="Miles per Gallon")

hist(Particulate,cex.lab=1.2,cex.axis=1.2,col="lightgray",breaks=seq(0,7,.5), + xlab="Particulate (g/gal)")
box()
