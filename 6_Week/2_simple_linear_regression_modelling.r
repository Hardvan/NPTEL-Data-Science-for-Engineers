# cd to the directory where this file is located and then run the code

# ? Predicting the bid price of a bond using its coupon rate

# * 1) Loading data
# dataset 'bonds' is given in ".txt" format
# function: read.delim()
# It reads a file in table format and creates a data frame from it

bonds <- read.delim("bonds.txt", row.names = 1)
# row.names = 1: first column is row names

View(bonds) # view() function is used to view the data frame
head(bonds) # head() function is used to view the first 6 rows of the data frame
tail(bonds) # tail() function is used to view the last 6 rows of the data frame

# Structure of the data
str(bonds)

# Summary of the data
print("Summary of the data:")
print("")
summary(bonds)

# * 2) Plotting the data
plot(bonds$CouponRate, bonds$BidPrice,
    main = "Bid Price v/s Coupon Rate",
    xlab = "Coupon Rate",
    ylab = "Bid Price"
)
# Check Rplots.pdf for the graph generated

# * 3) Build linear regression model
# function: lm()

model_bonds <- lm(BidPrice ~ CouponRate, data = bonds) # Preferred
# OR
# model_bonds <- lm(bonds$BidPrice ~ bonds$CouponRate)

# Fitting the regression line over the scatter plot
plot(bonds$CouponRate, bonds$BidPrice,
    main = "Bid Price v/s Coupon Rate",
    xlab = "Coupon Rate",
    ylab = "Bid Price"
)
abline(model_bonds)

# * 4) Look at summary of the model
print("Summary of the model:")
summary(model_bonds)

# First level model assessment
# Test on β̂ 1 is a two-sided test
# At α = 0.05 (95% confidence level) (confidence level = 1 - significance level)
print("First level model assessment:")
alpha <- 0.05
n <- nrow(bonds)
p <- 1
qt(p = 1 - alpha / 2, df = n - p - 1) # critical value of t

print("SSE:")
SSE <- sum(model_bonds$residuals^2)
print(SSE)

print("SSR:")
SSR <- sum((model_bonds$fitted.values - mean(bonds$BidPrice))^2)
print(SSR)

print("F-statistic:")
F_stat <- (SSR / SSE) * (n - 2)
print(F_stat)

# Second level model assessment

# Checking for outliers in the data

# Residual Analysis
plot(model_bonds$fitted.values, rstandard(model_bonds),
    main = "Residual Plot",
    xlab = "Predicted Values for Bid Price",
    ylab = "Standardized Residuals"
)
abline(h = 2, lty = 2) # adding a horizontal line at 2, lty = 2: dashed line
abline(h = -2, lty = 2)

# To know the indices of the outliers, use the identify() function

# Identifying indices of the outliers (Click on the points which are outliers)
# X11() # opens a new window (uncomment to test)
plot(model_bonds$fitted.values, rstandard(model_bonds),
    main = "Residual Plot",
    xlab = "Predicted Values for Bid Price",
    ylab = "Standardized Residuals"
)
abline(h = 2, lty = 2)
abline(h = -2, lty = 2)
# identify(model_bonds$fitted.values, rstandard(model_bonds)) # uncomment to test

# 4 13 34 35 are displayed as outliers

# Removing the outliers
new_bonds <- bonds[-c(4, 13, 34, 35), ]

# New model
new_model_bonds <- lm(BidPrice ~ CouponRate, data = new_bonds)

# Summary of the new model
print("Summary of the new model:")
summary(new_model_bonds)

# Plotting the new model
plot(new_bonds$CouponRate, new_bonds$BidPrice,
    main = "Bid Price v/s Coupon Rate without outliers",
    xlab = "Coupon Rate",
    ylab = "Bid Price"
)
abline(new_model_bonds)
