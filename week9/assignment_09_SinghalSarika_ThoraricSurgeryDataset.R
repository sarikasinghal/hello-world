# Assignment: ASSIGNMENT 9 - Second Part
# Name: Singhal, Sarika
# Date: 2021-08-08

## Set the working directory to the root of your DSC 520 directory
#setwd("/home/jdoe/Workspaces/dsc520")
setwd("~/Documents/repo/Week2/Week 2 - R/hello-world/week9")

install.packages("sos")
library("sos")
findFn("arff")


TS.Data.training <- read.csv("ThoraricSurgery.arff", header=TRUE, comment.char = "@")

TS.Data.training

data <- subset(TS.Data.training,select=c(2,3,5,6,7,8,10,12))


#Model fitting

train <- data[1:800,]
test <- data[801:889,]

train
test

model <- glm(V1 ~.,family=binomial(link='logit'),data=train)
model
summary(model)

#model Accuracy

anova(model, test="Chisq")

predictedval <- predict(model,test,type='response')
predicted <- round(predictedval) 


# Creating a dataframe of observed and predicted data
act_pred <- data.frame(observed = test$V12, predicted = factor(predicted))
install.packages("yardstick")
library(yardstick)
accuracy_est <- accuracy(act_pred, observed = test$V12, predicted)
print(accuracy_est)