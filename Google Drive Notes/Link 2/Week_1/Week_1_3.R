#1.The value of "x" after running the code given below is -----
x=95
if(x<90){
  x=x^3
}else if(x>100){
  x= x^5
}else {
  x= x^2}
print(x)

#2.The last value of sum and month printed is
n=5
sum=0
for(i in 1:11){
  sum=sum+(i^3)
  if(i%%2!=0)
    next
  print(c(month.abb[i=2],sum))
}

#3. Number of times the string "Thank you" will be printed when the below code is executed is:
n=25
sum=1
for(i in 1:n){
  sum=sum*n
  if(sum>50)
  {
    print("Welcome")
  }
  else
  {
    print("Thank you")
  }
}

#4.In the R code given below, the value of "i” at which the loop breaks is
n=16
x=seq(1,n,2)
for (i in x) {
  if (i == 5){
    print(i)
    break
  }
}

#5. The output displayed on running the code given below is
runif(100)
rnorm(100)

#7. Consider a list defined as below:
mylist=list("Ram","Harish","Pradeep",c("Python","Java","R"),"25","90","1")
#Choose the correct command to access the element "R"
#mylist[[2]][2]
#mylist[[4]][3]
#mylist[[3]][1]
#none of the above

#8.Given the following line of code to generate matrix ‘y’, how would you subset the third row?
y <- matrix(nrow=3, ncol=3, 1:9)
#y[3,]
#y[,3]
#y[3,2]
#y(3,)

#9. The correct command to build a matrix with numbers from 1 to 12, arranged row wise of size 3x4 and name it as "A" is
#A =matrix(c(1:12), nrow = 3, ncol = 4, byrow = F)
#A =matrix(c(1:12), nrow = 3, ncol = 4, byrow = T)
#A =matrix(c(1:12), nrow = 4, ncol = 3, byrow = T)
#A =matrix(c(1:12), nrow = 1, ncol = 9, byrow = T)

#Create a new data frame with the following variables.
library(dplyr)
a = data.frame(x1= c("A","B","C"), x2=1:3)
b = data.frame(x1= c("A","B","D"), x2=c("Yes","No","Yes"))

#Answer the questions below based on the data frame created above.
#i)The command to join data frame “b” to “a” by x1 is ---
#left_join(a,b,by='x1')
#left_join(b,a,by='x1')
#left.join(by='x1',a,b)
#left_join(by='x2',b,a)

# ii)The command to join data frame “a” to “b” by x1 is -
#right.join(b,a,by='x2')
#right_join(a,b,by='x1')
#right_join(by='x1',a,b)
#right.join(by='x1',b,a)

a = data.frame(x1= c("A","B","C"), x2=1:3)
b = data.frame(x1= c("A","B","D"), x2=c(1,3,6))
full_join(a,b)
inner_join(a,b,by='x1')
semi_join(a,b,by='x1')
anti_join(a,b)

a = data.frame(x1= c("A","B","C"), x2=1:3)
b = data.frame(x1= c("A","B","D"), x3=c(1,3,6))
full_join(a,b)




#Extra Questions
#Create a vec stockprices  23,27,22,21,27
#Give the vector the day names

stock.prices <- c(23,27,22,21,27)
names(stock.prices)<- c("M","T","W","TH","F")
stock.prices

#Average Stock Price
mean(stock.prices)

#Give stock prices over 23
stock.prices[stock.prices>23]

#Return the max stock price
max(stock.prices)

stock.prices[stock.prices==max(stock.prices)]

#Add an element in vector
x=10:15
x
y= seq(10,50,5)


z= c(x,y)
z

seq(10,100,5)

x= c(x,21)
x

y=y[1:7]
y

y= y[!y==20]
y


#Remove the values by index position
y[-4]
y
y[-c(1,3,4)]
y[-c(1:4)]

