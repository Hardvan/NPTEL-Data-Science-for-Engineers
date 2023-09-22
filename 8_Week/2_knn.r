# Predicting whether car service is required or not

library(caret) # for confusionMatrix
library(class) # for knn

# * 1) Reading the data
service_train <- read.csv("serviceTrainData.csv") # 315 x 6
service_test <- read.csv("serviceTestData.csv") # 135 x 5

# Convert "Service" column to factor (1/2)
service_train$Service <- as.factor(service_train$Service)
service_test$Service <- as.factor(service_test$Service)

# * 2) Viewing the data
View(service_train)
head(service_train)
head(service_test)

# Structure of the data
str(service_train)
str(service_test)

# Summary of the data
summary(service_train)
summary(service_test)

# * 3) Implementing KNN
predicted_knn <- knn(
    train = service_train[, -6], # -6 to remove "Service" column
    test = service_test[, -6],
    cl = service_train$Service, # Class
    k = 3
)
print(predicted_knn)

# Confusion matrix

conf_matrix <- confusionMatrix(
    data = predicted_knn,
    reference = service_test$Service
)
print(conf_matrix)

# OR
conf_matrix <- table(
    predicted_knn,
    service_test$Service
)
print(conf_matrix)

# Accuracy
print("Accuracy:")
knn_accuracy <- sum(diag(conf_matrix)) / nrow(service_test)
print(knn_accuracy)
