# Predicting Price of a restaurant based on Food, Decor, Service and Location

# * 1) Loading Data
nyc <- read.csv("nyc.csv")

# * 2) Viewing Data
View(nyc)
head(nyc)
tail(nyc)

# y: Price
# x₁: Food
# x₂: Decor
# x₃: Service
# x₄: East

# Pairwise Scatterplot
plot(nyc, main = "Pairwise Scatterplot")

# * 3) Building Model
model <- lm(Price ~ Food + Decor + Service + East, data = nyc)
# OR
# model <- lm(Price ~ ., data = nyc)

# Model Summary
summary(model)

# New model dropping Service
model2 <- lm(Price ~ Food + Decor + East, data = nyc)
summary(model2)

# New model dropping Food
model3 <- lm(Price ~ Decor + Service + East, data = nyc)
summary(model3) # R² value has reduced
