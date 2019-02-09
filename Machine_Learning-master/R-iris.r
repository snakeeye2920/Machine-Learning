library(doBy)

iris <- read.csv(file="iris.csv", header=TRUE, sep=",")

#print dataset
head(iris,7)

#print cloumn name
data <- data.frame(iris)
print(colnames(data))

#types & column 
print(lapply(data,typeof))

#Descriptive statistics of data
print("summary of sepal length:")
print(summary(data[1]))
standdaviation <- data$sepal.length
print("standard deviation:")
print(sd(standdaviation))
print("variance:")
print(var(standdaviation))

#mean value of all column
meaan <- data$sepal.length
print("mean of sepal length:")
print(mean(meaan))

#mean value group by
print("sepal width")
print(aggregate(data$sepal.width, by=list(data$variety), FUN=mean))

#lowest sepal width
low <-aggregate(data$sepal.width, by=list(data$variety), FUN=mean)
low <-low[order(low$x),]
print(low[1,1])

#max sepal width
low <-aggregate(data$sepal.width, by=list(data$variety), FUN=mean)
low <-low[order(low$x),]
print(low[3,1])

#lowest petal width
low <-aggregate(data$petal.width, by=list(data$variety), FUN=mean)
low <-low[order(low$x),]
print(low[1,1])

#max petal width
low <-aggregate(data$petal.width, by=list(data$variety), FUN=mean)
low <-low[order(low$x),]
print(low[3,1])

#lowest petal length
low <-aggregate(data$petal.length, by=list(data$variety), FUN=mean)
low <-low[order(low$x),]
print(low[1,1])

#max petal length
low <-aggregate(data$petal.length, by=list(data$variety), FUN=mean)
low <-low[order(low$x),]
print(low[3,1])


#lowest sepal length
low <-aggregate(data$sepal.length, by=list(data$variety), FUN=mean)
low <-low[order(low$x),]
print(low[1,1])

#max sepal length
low <-aggregate(data$sepal.length, by=list(data$variety), FUN=mean)
low <-low[order(low$x),]
print(low[3,1])


#variance group by
print("sepal width")
print(aggregate(data$sepal.width, by=list(data$variety), FUN=var))

#summary

print(summary(data))

#Stem-and-Leaf Plot for sepal length

sepallst <- data$sepal.length
print(stem(sepallst))

# Create the histogram for sepal length
png(file = "histogram_lim_breaks.png")
hist(data$sepal.length,xlab = "Weight",col = "green",border = "red", xlim = c(0,40), ylim = c(0,5),
     breaks = 5)
