#1

x <- c(20,60,100,140,180,220,260,300,340,380)
y <- c(0.18, 0.37, 0.35, 0.78, 0.56, 0.75, 1.18, 1.36, 1.17, 1.65)


data <- data.frame(x,y)


relation <- lm(y~x)

print(relation)

#2
png(file = "scatterplot.png")
plot(x = y,y = x,
     xlab = "Evaporation Coefficient",
     ylab = "Air Velocity",
     xlim = c(0,2),
     ylim = c(15,400),		 
     main = "Air Velocity vs Evaporation Coefficient"
)

# Save the file.
dev.off()
print("yes it's a linear relation")
png(file = "linearregression.png")

# Plot the chart.
plot(y,x,col = "blue",main = "Air Velocity & Evaporation Coefficient",
     abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "Evaporation Coefficient",ylab = "Air Velocity")
# Save the file.
dev.off()

#2.1-2.6
print("lm(y~x)")
sum <- summary(relation)
print(sum)

#2.6
print(relation$residuals)

#2.7
print(sum$r.squared)
print(sum$adj.r.squared)

#2.8
cor(x,y)
cor.test(x,y)

#2.9
print(sum$fstatistic)

#2.10
fit <- data.frame(x = x, Fitted = fitted(relation))
print(fit)

#2.11
resudal <- resid(relation)
png(file = "Residual Plot.png")
plot(x,resudal,
     ylab = "Residuals",
     xlab = "Air Velocity",
     main = "old Velocity relation"
)
abline(0,0)
# Save the file.
dev.off()
res <- data.frame(x = x, Residual = residuals(relation))
print(res)


#2.12
print(summary(resudal))
qqnorm(resudal)
qqline(resudal)


#3.1
dat <- read.delim("baseball.txt")
print(dat)

#3.2

data <- data.frame(dat)
x <-  data$AVG
y <- data$HR
rel <-lm(y~x)

print(rel)

print(summary(rel))

#3.3
resudalbaeball <- resid(rel)
print(resudalbaeball)
qqnorm(resudalbaeball)

#3.4

x <- log(x)
print(x)

rel_after_log <- lm(y~x)

print(rel_after_log)

print(summary(rel_after_log))

#3.5
png(file = "after_log_QQ.png")
resudal_after <- resid(rel_after_log)
print(resudal_after)
qqnorm(resudal_after)
dev.off()#1

x <- c(20,60,100,140,180,220,260,300,340,380)
y <- c(0.18, 0.37, 0.35, 0.78, 0.56, 0.75, 1.18, 1.36, 1.17, 1.65)


data <- data.frame(x,y)


relation <- lm(y~x)

print(relation)

#2
png(file = "scatterplot.png")
plot(x = y,y = x,
     xlab = "Evaporation Coefficient",
     ylab = "Air Velocity",
     xlim = c(0,2),
     ylim = c(15,400),		 
     main = "Air Velocity vs Evaporation Coefficient"
)

# Save the file.
dev.off()
print("yes it's a linear relation")
png(file = "linearregression.png")

# Plot the chart.
plot(y,x,col = "blue",main = "Air Velocity & Evaporation Coefficient",
     abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "Evaporation Coefficient",ylab = "Air Velocity")
# Save the file.
dev.off()

#2.1-2.6
print("lm(y~x)")
sum <- summary(relation)
print(sum)

#2.6
print(relation$residuals)

#2.7
print(sum$r.squared)
print(sum$adj.r.squared)

#2.8
cor(x,y)
cor.test(x,y)

#2.9
print(sum$fstatistic)

#2.10
fit <- data.frame(x = x, Fitted = fitted(relation))
print(fit)

#2.11
resudal <- resid(relation)
png(file = "Residual Plot.png")
plot(x,resudal,
     ylab = "Residuals",
     xlab = "Air Velocity",
     main = "old Velocity relation"
)
abline(0,0)
# Save the file.
dev.off()
res <- data.frame(x = x, Residual = residuals(relation))
print(res)


#2.12
print(summary(resudal))
qqnorm(resudal)
qqline(resudal)


#3.1
dat <- read.delim("baseball.txt")
print(dat)

#3.2

data <- data.frame(dat)
x <-  data$AVG
y <- data$HR
rel <-lm(y~x)

print(rel)

print(summary(rel))

#3.3
resudalbaeball <- resid(rel)
print(resudalbaeball)
qqnorm(resudalbaeball)

#3.4

x <- log(x)
print(x)

rel_after_log <- lm(y~x)

print(rel_after_log)

print(summary(rel_after_log))

#3.5
png(file = "after_log_QQ.png")
resudal_after <- resid(rel_after_log)
print(resudal_after)
qqnorm(resudal_after)
dev.off()
