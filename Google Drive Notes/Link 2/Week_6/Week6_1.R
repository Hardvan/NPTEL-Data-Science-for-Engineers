#Q1
# Read a txt file
my_data <- read.delim(file.choose(),row.names = 1)
head(my_data)
tail(my_data)
str(my_data)
summary(my_data)
plot(my_data$CouponRate,my_data$BidPrice,main = "Coupon Rate and Bid price",xlab = "Coupon Rate",ylab = "Bid Price")
#Build linear regression model, syntax: lm(dependant~independant)
model_1=lm(BidPrice~CouponRate,data=my_data)
#model_1=lm(my_data$BidPrice~my_data$CouponRate)
print(model_1)
plot(my_data$CouponRate,my_data$BidPrice,col = "blue",main = "Coupon Rate and Bid price",abline(model_1),cex = 1.3,pch = 16,xlab = "Coupon Rate",ylab = "Bid Price")
#abline a:b0, b:b1
summary(model_1)


#test on B1:two sided test
alpha=0.05 #i.e. 95% confidence interval
n=35
p=1
qt(p= 1-(alpha/2),df = n-p-1)

#confidence interval for B1
3.0661-(2.034515*0.3068)
3.0661+(2.034515*0.3068)
#interval does not include 0, B1 is significant

#F statistic
SSE<-sum((my_data$BidPrice-model_1$fitted.values)^2)
SSE
SSR<- sum((model_1$fitted.values-mean(my_data$BidPrice))^2)
SSR
n=35
(SSR/SSE)*(n-2)

#residual Analysis
plot(model_1$fitted.values,rstandard(model_1),
     main= "Residual plot",
     xlab = "Predicted values for Bid Price",
     ylab = "Standardised Residuals")
abline(h=2, lty=2)
abline(h=-2, lty=2)

identify(model_1$fitted.values, rstandard(model_1))

#new data
bonds_new<-my_data[-4,]
bonds_mod1<-lm(bonds_new$BidPrice~bonds_new$CouponRate)
identify(bonds_mod1$fitted.values, rstandard(bonds_mod1))
summary(bonds_mod1)
