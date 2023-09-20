#Q1. What is the relationship between the variables, Coupon rate and Bid price?
# Read a txt file
bonds <- read.delim(file.choose(),row.names = 1)
model_1=lm(BidPrice~CouponRate,data=bonds)
print(model_1)

#Q2. Choose the correct option that best describes the relation between the variables Coupon rate and Bid price in the given data
cor(bonds$CouponRate,bonds$BidPrice)

#Q3. What is the R-Squared value of the model obtained in Q1?
summary(model_1)

#Q4. What is the adjusted R-Squared value of the model obtained in Q1?
x=c(80,75,85,70,65)
y=c(85,70,80,95,70)
n=5
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

#Q5
a<- data.frame(CouponRate=3)
result <-  predict(model_1,a)
print(result)
R_error = 94.50-result
print(R_error)

# https://www.wallstreetmojo.com/r-squared-formula/
# https://www.shiksha.com/online-courses/articles/how-to-calculate-r-squared-in-linear-regression/

