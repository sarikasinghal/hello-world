# Assignment: ASSIGNMENT 5 -02
# Name: Singhal, Sarika
# Date: 2021-07-21

## Set the working directory to the root of your DSC 520 directory
#setwd("/home/jdoe/Workspaces/dsc520")
setwd("~/Documents/repo/Week2/dsc520/data")

## Load the `data/student-survey.csv` to
studentsurvey <- read.csv("student-survey.csv")
str(studentsurvey)

## TimeReading vs. TimeTV
cor(studentsurvey$TimeReading, studentsurvey$TimeTV/60, method = c("pearson", "kendall", "spearman"))
### TimeReading vs. Happiness
cor(studentsurvey$TimeReading, studentsurvey$Happiness, method = c("pearson", "kendall", "spearman"))
### TimeReading vs. Gender
cor(studentsurvey$TimeReading, studentsurvey$Gender, method = c("pearson", "kendall", "spearman"))

#2. Examine the Survey data variables. What measurement is being used for the variables? Explain what effect changing the measurement being used for the variables would have on the covariance calculation. Would this be a problem? Explain and provide a better alternative if needed.

str(studentsurvey)
summary(studentsurvey)

# In order to use describe on package
install.packages("psych")


library(psych) 

describe(studentsurvey)

#correlation
cor(studentsurvey)

class(studentsurvey$TimeReading)

class(studentsurvey$TimeTV)
sapply(studentsurvey,class)

#Converting the class 

studentsurvey$TimeReading.f = factor(studentsurvey$TimeReading/60,ordered = TRUE)
cor(studentsurvey)

#3. Choose the type of correlation test to perform, explain why you chose this test, and make a prediction if the test yields a positive or negative correlation?

#Correlation method can be pearson, spearman or kendall

#TimeReading : 