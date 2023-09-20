#Question1
#Load the dataset iris.csv as a dataframe iris_data, with the first column as index headers, first row as column headers, dependent variable as factor variable, and answer the following questions.
# What are the dimensions of the dataframe?
#C:\Users\admin\Desktop\NPTEL_TA\Data_Science_Engg_July23\Week_7
iris_data = read.csv("C:/Users/admin/Desktop/NPTEL_TA/Data_Science_Engg_July23/Week_7/iris.csv", header = TRUE, row.names = "ID", stringsAsFactors = TRUE)
dim(iris_data)
str(iris_data)
#Question2
#What can you comment on the distribution of the independent variables in the dataframe
summary(iris_data)
#can be observed with pair plot
#install libraries present
library(ggplot2)
library(GGally)
ggpairs(iris_data)
#Question3
#How many rows in the dataset contain missing values?
sum(is.na(iris_data))
#Question5
#d
apply(iris_data[,3:4],1,mean) 
apply(iris_data[,3:4],2,mean) 
# This gives the mean value across the columns for each and every row in the dataframe
#b
sapply(iris_data[, 3:4], 2, mean)
sapply(iris_data[, 3:4], mean)# correct syntax
#a
lapply(iris_data[, 3:4], mean)
#c
apply(iris_data[, 3:4], 2, mean)

#Question7
iris_data = read.csv(file.choose(), header = TRUE, row.names = "ID", stringsAsFactors = TRUE)
iris1_data = read.csv(file.choose(), header = TRUE, row.names = "ID")

library(caTools)
set.seed(123)
split_data = sample.split(iris1_data$Species, SplitRatio = 0.7)

split_data = sample.split(iris_data$Species, SplitRatio = 0.7)
split_data
train_iris_data =subset(iris_data, split_data == TRUE)
dim(train_iris_data)
test_iris_data =subset(iris_data, split_data == FALSE)
dim(test_iris_data)
train_iris_data$Species<-as.numeric(train_iris_data$Species)
test_iris_data$Species<-as.numeric(test_iris_data$Species)

logit_model <- glm(Species ~ SepalLength + SepalWidth + PetalLength + PetalWidth, data = train_iris_data)
summary(logit_model)
#https://www.theanalysisfactor.com/r-glm-model-fit/#:~:text=Fisher%20Scoring,-What%20about%20the&text=Fisher's%20scoring%20algorithm%20is%20a,iterations%20to%20perform%20the%20fit.