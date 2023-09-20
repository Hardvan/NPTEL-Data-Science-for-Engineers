#EXAMPLE 1.1
A=matrix(c(1,2,3,4),ncol=2,byrow=F)
b=c(7,10)
x=solve(A)%*%b

# Example 2
A= matrix(c(1,2,3,0,0,1), ncol=2, byrow=F)
b=matrix(c(1,2,5),ncol=1, byrow=T)
x=inv(t(A)%*%A)%*%t(A)%*%b
x
library(pracma)
library(Matrix)

# Example 3
A= matrix(c(1,0,2,0,3,1), ncol=3)
b=c(2,1)
library(MASS)
X= t(A)%*%inv(A%*%t(A))%*%b
x

#Example 4
A= matrix(c(1,2,3,0,0,1), ncol=2, byrow=F)
b=matrix(c(1,2,5),ncol=1, byrow=T)
x=ginv(A)%*%b

#Example 5
A= matrix(c(1,0,2,0,3,1), ncol=3)
b=c(2,1)
x=ginv(A)%*%b
x

#Example 6
v1=c(1,-2,4)
v2=c(2,5,2)
N=t(v1)%*%v2

#Example 7
A= matrix(c(8,7,2,3), 2,2, byrow=T)
ev=eigen(A)
vectors<-ev$values
vectors

A= matrix(c(1,2,4,3), 2, byrow=T)
ev=eigen(A)
ev$values
ev$vectors


A=matrix(c(-1,2,2),1,byrow=F)
At= t(A)#transpose of A
B=A%*%At
eigen(B)

A= matrix(c(2,1,3,-1,1,-3,3,-2,8), 3, byrow=T)
det(A)

A= matrix(c(2,1,3,-1,1,-3), ncol=3, byrow=T)
det(A)

A= matrix(c(1,2,3,2,3,6,4,5,9), 3, byrow=T)
det(A)
Rank(A)

E=matrix(c(-31,12,12,14),2,byrow=T)
Ev=eigen(E)
Ev$values
Ev$vectors

A=matrix(c(1,2,4,3),2,byrow=T)
Ea=eigen(A)
Ea$values
Ea$vectors
print(M <- matrix(c(1:9), 3, 3, T))
print(N <- matrix((10, 11, 19), 1, 3, T))
print(CB <- cbind(M, N)) Here generate a error mam after performing t(N) operation.