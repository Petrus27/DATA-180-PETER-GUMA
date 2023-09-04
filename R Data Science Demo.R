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