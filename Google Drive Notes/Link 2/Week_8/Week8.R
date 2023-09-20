#setwd("C:/Users/sharu/Desktop/PMRF_Lec new/NPTEL/NPTEL_TA_R/Data_Science_Engg_July23/Week8")
rm(list=ls())
#install.packages("caret",dependencies = TRUE)
#install.packages("class",dependencies = TRUE)
library(caret)
library(class)
#1. According to the built model, the within cluster sum of squares for each cluster is __ (the order of values in each option could be different):-
data = read.csv(file.choose(),header = T, row.names = "States")
df <- scale(data)
set.seed(123)
fit<-kmeans(df,centers = 4, nstart=20)
# https://andrea-grianti.medium.com/kmeans-parameters-in-rstudio-explained-c493ec5a05df#:~:text=nstart%20represents%20the%20number%20of,t%20want%20to%20do%20manually.
print(fit$withinss)
#2. According to the built model, the size of each cluster is _______ (the order of values in each option could be different):-
print(fit$size)
#3. The Between Cluster Sum-of-Squares (BCSS) value of the built K-means model is ___________(Choose the appropriate range)
print(fit$betweenss)
#4. The Total Sum-of-Squares value of the built k-means model is________ (Choose the appropriate range)
print(fit$totss)
