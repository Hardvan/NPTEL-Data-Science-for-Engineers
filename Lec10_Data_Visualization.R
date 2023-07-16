# ? Scatter Plot
X <- 1:10
Y <- X^2
plot(Y)

# Dataset "mtcars" : 1974 Motor Trend US magazine
# 32 observations on 11 variables
plot(mtcars$wt, mtcars$mpg,
    main = "Scatterplot of wt vs. mpg",
    xlab = "Car Weight", ylab = "Miles per Gallon",
    pch = 19 # pch = 19 : solid circle
)

# ? Line Plot
X <- 1:10
Y <- X^2
plot(X, Y, type = "l")

# ? Bar Plot
H <- c(7, 12, 28, 3, 41)
M <- c("Jan", "Feb", "Mar", "Apr", "May")
barplot(H,
    names.arg = M,
    xlab = "Month", ylab = "Revenue",
    col = "blue",
    main = "Monthly Revenue"
)

# ? Multiple Plots in a Single Figure
par(mfrow = c(2, 4)) # 2 rows, 4 columns
days <- c("Thur", "Fri", "Sat", "Sun")
sexes <- unique(tips$sex)

for (i in 1:length(sexes)) {
    for (j in 1:length(dats)) {
        currdata <- tips[tips$day == days[j] & tips$sex == sexes[i], ]
        plot(currdata$total_bill, currdata$tip / currdata$total_bill,
            main = paste(days[j], sexes[i], sep = ","), ylim = c(0, 0.7), las = 1
        )
    }
}
