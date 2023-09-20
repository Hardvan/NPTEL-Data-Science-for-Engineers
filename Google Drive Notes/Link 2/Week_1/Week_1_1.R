#1. R script files have an extension of
# a)Rp b) R c)S d)None of the above

#2. In the R code given below, the value of "i” at which the loop breaks is ---------
n=16
x = seq(1,n,2)
for (i in x) {
  if (i == 5){
    print(i)
    break
  }
}

#3.The output of the code given below is ---------
x =c(1:4) 
x
y =c(6,3) 
y
x *y
x ** y

#4.Which one of the following function can be used to list the installed packages in R?
#library()
#library[]
#library{}
#All of above

#5.The value(s) of "y" at the end of the program given below is--
x1=matrix(10:18,3,3)
x2=matrix(11:19,3,3)
#x3=apply(x1,1,min)
#x4=apply(x2,1,max)
m =cbind(apply(x1,1,min),apply(x2,1,max))
print(m)
y =apply(m,1,mean)
print(y)
rowMeans(m)
colMeans(m)
#Also rowMeans and colMeans