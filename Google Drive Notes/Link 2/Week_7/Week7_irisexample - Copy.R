#Iris Dataset: Logistic Regression Analysis Report
rm(list=ls())
library(datasets)
#load the dataset
ir_data<- iris
# See the first 6 samples
head(ir_data)
# Structure of the data
str(ir_data)
#To see the different classes
levels(ir_data$Species)
#Finding null values
sum(is.na(ir_data))
# Choosing only two species
ir_data<-ir_data[1:100,]
set.seed(100)
samp<-sample(1:100,80)
ir_train<-ir_data[samp,]
ir_test<-ir_data[-samp,]
dim(ir_train)
dim(ir_test)
#For plotting
#install.packages("ggplot2") 
#install.packages("GGally")
library(ggplot2)
library(GGally)
ggpairs(ir_train)
#Sepal length is more normalised
# Based on plot, a Logistic regression is applied with Species as the dependent variable and Sepal Length as the independent
y<-ir_train$Species; x<-ir_train$Sepal.Length
glfit<-glm(y~x, family = 'binomial')
summary(glfit)

#Result of the training data set is applied on the validation data set (20 samples of data)
newdata<- data.frame(x=ir_test$Sepal.Length)
predicted_val<-predict(glfit, newdata, type="response")
prediction<-data.frame(ir_test$Sepal.Length, ir_test$Species,predicted_val)
prediction
pred_new<-data.frame(ir_test$Sepal.Length, ir_test$Species,predicted_val)
pred_new
pred_new[predicted_val<=0.5,"Pred_type"]<-"setosa"
pred_new[predicted_val>0.5,"Pred_type"]<-"versicolor"
pred_new
pred_class<-data.frame(ir_test$Sepal.Length, ir_test$Species,pred_new$Pred_type)
pred_class
str(pred_class)
library(caret)

#Creating confusion matrix
example <- confusionMatrix(data=pred_class$pred_new.Pred_type, reference = pred_class$ir_test.Species)
pred_class$ir_test.Species = as.character(pred_class$ir_test.Species)
qplot(prediction[,1], round(prediction[,3]), col=prediction[,2], xlab = 'Sepal Length', ylab = 'Prediction using Logistic Reg.')

pred=as.factor(pred_class$pred_new.Pred_type)
ref=pred_class$ir_test.Species
length(pred)
length(ref)
eg<- confusionMatrix(data=pred,reference = ref)
eg
