# cd to the directory where this file is located and then run the code


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
