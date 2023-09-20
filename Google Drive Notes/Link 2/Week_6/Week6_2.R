#Question
#Finding relationship between variables
x=c(-2,-1,5,-5,2)
y=c(-3,-4,-10,0,-7)
cor(x,y)
#Question
x=c(8.55,0.32,8.4,6.96,3.23,8.18)
y=c(17.03,6.19,16.53,16.06,10.92,19.34)
n=6
sxx=sum(x^2)-sum(x)^2/n
syy=sum(y^2)-sum(y)^2/n
sxy=sum(x*y)-(sum(x)*sum(y))/n
# Coefficient of determination R-squared
sse=syy - sxy^2/sxx
r2=(syy-sse)/syy
round(print(r2),2)
# R-squared adjusted
r2_adj=1-((1-r2) * ((length(y)-1)/ (length(y)-2)))
round(print(r2_adj),2)
r2_adj1=r2-(1-r2) * ((2-1)/ (length(y)-2))
round(print(r2_adj1),2)


# For the following set of questions 5,6,7 use the dataset women.csv. This dataset contains 2 variables height (in cms) and weight (in kgs)
# Question5: What is the relationship between the variables height and weight?
#C:\Users\admin\Desktop\NPTEL_TA\Data_Science_Engg_July23\Week_6
data=read.csv("C:/Users/admin/Desktop/NPTEL_TA/Data_Science_Engg_July23/Week_6/women.csv", row.names = 1)
model_1=lm(weight~height,data=data)
print(model_1)
plot(y,x,col = "blue",main = "Height & Weight Regression",abline(lm(x~y)),cex = 0.8,pch = 16,xlab = "Height in Kg",ylab = "Weight in cm")


plot(y,x,col = "blue",main = "Height & Weight Regression",
     abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "Height in Kg",ylab = "Weight in cm")
# Question6: What is the R-Squared value of the model obtained in Question5?
summary(model_1)
#Question7: Based on the model relationship obtained from Q5, what is the residual error obtained while calculating the weight of a woman with height 69 cms?
a<- data.frame(height=69)
result <-  predict(model_1,a)
print(result)
R_error = result-150
print(R_error)

#Extra problem
# Create the predictor and response variable.
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
relation <- lm(y~x)
summary(relation)

# Give the chart file a name.
png(file = "linearregression.png")

# Plot the chart.
#plot(y,x,col = "blue",main = "Height & Weight Regression",xlab = "Weight in Kg",ylab = "Height in cm")
plot(y,x,col = "blue",main = "Height & Weight Regression",abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "Weight in Kg",ylab = "Height in cm")

# Save the file.
dev.off()

#plot residuals
plot(relation$residuals, pch = 16, col = "red")
help(plot)
#https://www.datacamp.com/tutorial/linear-regression-R
#https://www.analyticsvidhya.com/blog/2020/07/difference-between-r-squared-and-adjusted-r-squared/