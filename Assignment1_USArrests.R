#get working directory
getwd

#list all files in working directory
list.files

#set working directory to "/"
setwd("/")
getwd ()

install.packages('dplyr')
library(dplyr)

#install for R Input/Output from online data source
install.packages('rio')
library(rio)

install.packages('ggplot2')
library(ggplot2)

#load data set library
library(MASS)


#use "USArrests" data set within R
data("USArrests")
?USArrests

#Show an overview of all the data in new data window
View(USArrests)
summary(USArrests)
names(USArrests)

#create variables
UrbanPop <- USArrests$UrbanPop
Murder <- USArrests$Murder
Assault <- USArrests$Assault
Rape <- USArrests$Rape

#create "functional mean" function - same as "mean" command
fun_mean <- function(x) {sum(x) / length(x)}
fun_mean(x = USArrests$Murder)
fun_mean(x = USArrests$Assault)
fun_mean(x = USArrests$UrbanPop)
fun_mean(x = USArrests$Rape)

#histogram and histogram with renames axes
hist(USArrests$Murder, main = 'Arrests per 100,000 residents for the US states in 1973', xlab = 'Murder Arrests')
hist(USArrests$Rape, main = 'Arrests per 100,000 residents for the US states in 1973', xlab = 'Rape Arrests')
hist(USArrests$Assault, main = 'Arrests per 100,000 residents for the US states in 1973', xlab = 'Assault Arrests')

#test for correlation between variables
cor.test(log(USArrests$UrbanPop), USArrests$Assault)
cor.test(log(USArrests$UrbanPop), USArrests$Rape)
cor.test(log(USArrests$UrbanPop), USArrests$Murder)



old.par <- par(mfrow=c(1, 3))
#plot of Urban Population vs. Murders
plot(x = USArrests$UrbanPop, y = USArrests$Murder,xlab = "Urban Population (%)", ylab = "Murder (Arrests per 100,000)", pch=0)
title("Murder Arrest Rates")
fit <- lm(USArrests$Murder ~ USArrests$UrbanPop)   # Murder 'as a linear function of' Urban Population
abline(fit)

#plot of Urban Population vs. Rapes
plot(x = USArrests$UrbanPop, y = USArrests$Rape,xlab = "Urban Population (%)", ylab = "Rape (Arrests per 100,000)", pch=1)
title("Rape Arrest Rates")
fit <- lm(USArrests$Rape ~ USArrests$UrbanPop)   # Rape 'as a linear function of' Urban Population
abline(fit)

#plot of Urban Population vs. Assault
plot(x = USArrests$UrbanPop, y = USArrests$Assault,xlab = "Urban Population (%)", ylab = "Assault (Arrests per 100,000)", pch=2)
title("Assault Arrest Rates")
fit <- lm(USArrests$Assault ~ USArrests$UrbanPop)   # Assault 'as a linear function of' Urban Population
abline(fit)
par(old.par)


par(mfrow=c(1, 1))
#create boxplot of US Arrest data
boxplot(USArrests)


ggplot(USArrests, aes(UrbanPop)) + geom_line(aes(y = Murder, colour = "Murder")) + geom_line(aes(y = Rape, colour = "Rape"))+ geom_line(aes(y = Assault, colour = "Assault"))

scatter.smooth(x=1:length(USArrests$Rape), y=USArrests$UrbanPop)

