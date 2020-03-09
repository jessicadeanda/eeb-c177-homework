install.packages("ggplot2")
library(ggplot2)
head(iris)

# Scatterplot
# plot 1
plot(x=iris$sepal.length, y=iris$sepal.width, 
     xlab="Sepal Length", ylab="Sepal Width",  main="Sepal Length-Width")
# plot 2
library(ggplot2)
scatter <- ggplot(data=iris, aes(x = sepal.length, y = sepal.width)) 
scatter + geom_point(aes(color=species, shape=species)) +
  xlab("Sepal Length") +  ylab("Sepal Width") + ggtitle("Sepal Length-Width")
# plot 3
scatter + geom_point(aes(color = petal.width, shape = species), size = 2, alpha = I(1/2)) +
  geom_vline(aes(xintercept = mean(sepal.length)), color = "red", linetype = "dashed") +
  geom_hline(aes(yintercept = mean(sepal.width)), color = "red", linetype = "dashed") +
  scale_color_gradient(low = "yellow", high = "red") +
  xlab("Sepal Length") +  ylab("Sepal Width") +
  ggtitle("Sepal Length-Width")

## boxplot
# plot 1
boxplot(sepal.length~species,data=iris, 
        xlab="Species", ylab="Sepal Length", main="Iris Boxplot")
# plot 2
library(ggplot2)
box <- ggplot(data=iris, aes(x=species, y=sepal.length))
box + geom_boxplot(aes(fill=species)) + 
  ylab("Sepal Length") + ggtitle("Iris Boxplot") +
  stat_summary(fun.y=mean, geom="point", shape=5, size=4)
# Remove the legend : guides(fill=FALSE)
# Flipped axes : coord_flip()

## histogram
# plot 1
hist(iris$sepal.width, freq=NULL, density=NULL, breaks=12,
     xlab="Sepal Width", ylab="Frequency", main="Histogram of Sepal Width")
# plot 2
library(ggplot2)
histogram <- ggplot(data=iris, aes(x=sepal.width))
histogram + geom_histogram(binwidth=0.2, color="black", aes(fill=species)) + 
  xlab("Sepal Width") +  ylab("Frequency") + ggtitle("Histogram of Sepal Width")

## bar plot
# plot 1
set.seed(1234)
iris1 <- iris[sample(1:nrow(iris), 110), ]
hline <- data.frame(species=c("setosa", "versicolor", "virginica"), hline=as.vector(table(iris$species)))
hline
barplot(table(iris1$species), col="black", xlab="Species", ylab="Count", main="Bar plot of Sepal Length")
# plot 2
library(ggplot2)
bar <- ggplot(data=iris1, aes(x=species))
bar + geom_bar() + 
  xlab("Species") +  ylab("Count") + ggtitle("Bar plot of Sepal Length") +
  geom_errorbar(data=hline, aes(y=hline, ymin=hline, ymax=hline), col="red", linetype="dashed")
# plot 3
install.packages("reshape2")
library(reshape2)
iris2 <- melt(iris, id.vars="species")
iris2[1:3,]
library(ggplot2)
bar1 <- ggplot(data=iris2, aes(x=species, y=value, fill=variable))
bar1 + geom_bar(stat="identity", position="dodge") + 
  scale_fill_manual(values=c("orange", "blue", "darkgreen", "purple"),
                    name="Iris\nMeasurements",
                    breaks=c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width"),
                    labels=c("Sepal Length", "Sepal Width", "Petal Length", "Petal Width"))
