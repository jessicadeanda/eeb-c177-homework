library(datasets)

## load the iris dataset
data(iris)
# The summary() function gives summary statistics for any dataset
summary(iris)
# can also be used for one variable
summary(iris$Sepal.Length)
# only look at columns
names(iris)

## the dplyr package
install.packages("dplyr")
# save column names as "names(iris)"
# tolower = lower case; toupper = upper case
names(iris) <- tolower(names(iris))
library(dplyr)

### filter()
# filter() the data for species virginica
# use == and "" because the variable is of character data type
virginica <- filter(iris, species == "virginica")
head(virginica) # This dispalys the first six rows
# filter accoring to multiple conditions
sepalLength6 <- filter(iris, species == "virginica", sepal.length > 6)
tail(sepalLength6) # this displays the last 6 rows
# another way to do this
sepalLength7 <- subset(iris, species == "virginica" & sepal.length > 7)
tail(sepalLength7)

### select()
# select() the specified columns
selected <- select(iris, sepal.length, sepal.width, petal.length)
# select all columns from sepal.length to petal.length
selected2 <- select(iris, sepal.length:petal.length)
head(selected, 3)
# check that selected and selected2 are exactly the same
identical(selected, selected2) # True

### mutate()
# create a new column that stores logical values for sepal.width greater than half of sepal.length
newCol <- mutate(iris, greater.half = sepal.width > 0.5 * sepal.length)
tail(newCol)

# arrange()
newCol <- arrange(newCol, petal.width)
head(newCol)
# The chain operator, or the pipeline %>% will first filter, THEN arrange data
# Note: the order in which you call functions does not matter here, but in other cases it might
arr.virg <- newCol %>% filter(species == "virginica") %>%
  arrange(sepal.width)
arr.virg[30:35,] # will show us rows 30 through 35 and all columns
# You can also arrange in descending order using desc() on what you arrange by
# arrange(desc(sepal.width))
# summarise()
summarise(arr.virg, mean.length = mean(sepal.length, na.rm = TRUE))

## Visualization
plot(iris)
# use ?plot to read more about other arguments
plot(iris$sepal.width, iris$sepal.length)
# ?hist will give you details on more arguments
hist(iris$sepal.width)
