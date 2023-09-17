# Automotive Crash Testing

library(caret) # for confusionMatrix

# * 1) Reading Data
crashTest_1 <- read.csv("crashTest_1.csv", row.names = 1)
crashTest_1_test <- read.csv("crashTest_1_TEST.csv", row.names = 1)

# * 2) Viewing Data
View(crashTest_1)
head(crashTest_1)
head(crashTest_1_test)

# Structure of the data
str(crashTest_1)

# Summary of the data
summary(crashTest_1)
summary(crashTest_1_test)

# * 3) Building Model

# Convert CarType to a factor
crashTest_1$CarType <- as.factor(crashTest_1$CarType)
crashTest_1_test$CarType <- as.factor(crashTest_1_test$CarType)

logis_fit <- glm(
    formula = crashTest_1$CarType ~ .,
    family = "binomial", # Logistic Regression
    data = crashTest_1
)

summary(logis_fit)

# Finding the odds using predict()

logis_train <- predict(logis_fit, type = "response")
plot(logis_train)

# Mean of the odds
tapply(logis_train, crashTest_1$CarType, mean)

# * 4) Predicting on Test Data

logis_pred <- predict(logis_fit, newdata = crashTest_1_test, type = "response")
plot(logis_pred)

# Results
crashTest_1_test[logis_pred <= 0.5, "Logis_Pred"] <- "Hatchback"
crashTest_1_test[logis_pred > 0.5, "Logis_Pred"] <- "SUV"

# Confusion Matrix
confusionMatrix(table(crashTest_1_test$CarType, crashTest_1_test$Logis_Pred),
    positive = "SUV" # Positive Class
)
