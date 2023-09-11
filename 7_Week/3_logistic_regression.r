# Automotive Crash Testing

library(caret) # for confusionMatrix

# * 1) Reading Data
crashTest_1 <- read.csv("crashTest_1.csv", row.names = 1)
crashTest_1_TEST <- read.csv("crashTest_1_TEST.csv", row.names = 1)

# * 2) Viewing Data
View(crashTest_1)
head(crashTest_1)
head(crashTest_1_TEST)

# Structure of the data
str(crashTest_1)

# Summary of the data
summary(crashTest_1)
summary(crashTest_1_TEST)

# * 3) Building Model

# Convert CarType to a factor
crashTest_1$CarType <- as.factor(crashTest_1$CarType)
crashTest_1_TEST$CarType <- as.factor(crashTest_1_TEST$CarType)

logis_fit <- glm(formula = crashTest_1$CarType ~ ., family = "binomial", data = crashTest_1)

summary(logis_fit)

# Finding the odds using predict()

logis_train <- predict(logis_fit, type = "response")
plot(logis_train)

# Mean of the odds
tapply(logis_train, crashTest_1$CarType, mean)

# * 4) Predicting on Test Data

logis_pred <- predict(logis_fit, newdata = crashTest_1_TEST, type = "response")
plot(logis_pred)

# Results
crashTest_1_TEST[logis_pred <= 0.5, "Logis_Pred"] <- "Hatchback"
crashTest_1_TEST[logis_pred > 0.5, "Logis_Pred"] <- "SUV"

# Confusion Matrix
confusionMatrix(table(crashTest_1_TEST$CarType, crashTest_1_TEST$Logis_Pred), positive = "SUV")
