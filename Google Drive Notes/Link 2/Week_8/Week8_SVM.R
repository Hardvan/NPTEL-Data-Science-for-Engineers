#Support Vector Machine (SVM)
#https://www.geeksforgeeks.org/support-vector-machine-classifier-implementation-in-r-with-caret-package/
# Code for installation of all necessary packages
#install.packages("caret")
#install.packages("ggplot2")
#install.packages("GGally")
#install.packages("psych")
#install.packages("ggpubr")
#install.packages("reshape")

# Code for importation of all necessary packages
library(caret)
library(ggplot2)
library(GGally)
library(psych)
library(ggpubr)
library(reshape)

# Code
#PIMA Indian Diabetes Dataset
#https://www.kaggle.com/datasets/uciml/pima-indians-diabetes-database
df <- read.csv(file.choose())
head(df)
# To check if there is any null values in our dataset.
sum(is.na(df))
# To see the dimensions of our dataset.
dim(df)
# Code to see the type of our data frame
sapply(df, class)

# Code to calculate the summary of our dataset
summary(df)  

# Code
# http://www.sthda.com/english/wiki/ggplot2-histogram-plot-quick-start-guide-r-software-and-data-visualization
# https://ggplot2.tidyverse.org/reference/aes.html#:~:text=aes()%20is%20a%20quoting,to%20program%20with%20aes()%20.
a <- ggplot(data = df, aes(x = Pregnancies)) +
  geom_histogram( color = "red", fill = "blue", alpha = 0.1) +
  geom_density()

b <- ggplot(data = df, aes(x = Glucose)) +
  geom_histogram( color = "red", fill = "blue", alpha = 0.1) +
  geom_density()

c <- ggplot(data = df, aes(x = BloodPressure)) +
  geom_histogram( color = "red", fill = "blue", alpha = 0.1) +
  geom_density()

d <- ggplot(data = df, aes(x = SkinThickness)) +
  geom_histogram( color = "red", fill = "blue", alpha = 0.1) +
  geom_density()

e <- ggplot(data = df, aes(x = Insulin)) +
  geom_histogram( color = "red", fill = "blue", alpha = 0.1) +
  geom_density()

f <- ggplot(data = df, aes(x = BMI)) +
  geom_histogram( color = "red", fill = "blue", alpha = 0.1) +
  geom_density()

g <- ggplot(data = df, aes(x = DiabetesPedigreeFunction)) +
  geom_histogram( color = "red", fill = "blue", alpha = 0.1) +
  geom_density()

h <- ggplot(data = df, aes(x = Age)) +
  geom_histogram( color = "red", fill = "blue", alpha = 0.1) +geom_density()
ggarrange(a, b, c, d,e,f,g, h + rremove("x.text"),
          labels = c("a", "b", "c", "d","e", "f", "g", "h"),
          ncol = 3, nrow = 3)
#install.packages("ggpubr", repos = "https://cloud.r-project.org/", dependencies = TRUE)


# Code
ggplot(data = df, aes(x =Outcome, fill = Outcome)) +
  geom_bar()

# Code to label our categorical variable as a factor
df$Outcome<- factor(df$Outcome,
                    levels = c(0, 1),
                    labels = c("Negative", "Positive"))
out <- subset(df,
              select = c(Pregnancies,Glucose,
                         BloodPressure,SkinThickness,
                         Insulin,BMI,
                         DiabetesPedigreeFunction,Age))

# Code for boxplot
ggplot(data = melt(out),
       aes(x=variable, y=value)) +
  geom_boxplot(aes(fill=variable))

#To plot the correlation plot by using the psych package
corPlot(df[, 1:5])

#1. In these findings, the mean of the variables necessary to predict the outcome variable—pregnancies, insulin, glucose, diabetes pedigree function, and age—is greater than the median. The mean is higher than the median because the data seem to be biased to the right.
#2. Our data’s histogram and boxplots support the conclusions of summary statistics.
#3. The correlation map, however, shows that the variables in our data do not strongly correlate with one another.
cutoff <- createDataPartition(df$Outcome, p=0.85, list=FALSE)
# select 15% of the data for validation
testdf <- df[-cutoff,]
# use the remaining 85% of data to training and testing the models
traindf <- df[cutoff,]
# Code to train the SVM
set.seed(1234)
# set the 10 fold cross-validation with AU
# to pick for us what we call the best model
control <- trainControl(method="cv",number=10, classProbs = TRUE)
metric <- "Accuracy"
#data <- na.omit(traindf)
model <- train(Outcome ~., data = data <- na.omit(traindf), method = "svmRadial",
               tuneLength = 8,preProc = c("center","scale"),
               metric=metric, trControl=control)
# Code for model summary
model
# Code
plot(model)
# validate our model
predict <- predict(model, newdata = testdf)
confusionMatrix(predict, testdf$Outcome)
