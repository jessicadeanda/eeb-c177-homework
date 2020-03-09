# NOTE: "run" runs things line by line

x <- 5
5 -> x
print(x)

head(iris)
tail(iris)

# how to read a csv file
mydata <- read.csv("myfile.csv", sep = ",", header = T)

summary(iris)

# print vector
print(iris$Sepal.Length)
# print 12th item --> counts starting from 1, not 0
print(iris$Sepal.Length[12])

# installing passages is better from the console below
# type install.packages("mypackage")

library(dplyr)

getwd()
setwd("location")

install.packages("swirl")
