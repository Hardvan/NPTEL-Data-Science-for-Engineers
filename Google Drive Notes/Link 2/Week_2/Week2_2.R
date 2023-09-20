#4. Inverse of matrix

# Creating 1st Matrix
A = matrix(c(1,3,5,2,6,10,3,9,8), ncol = 3, byrow=TRUE)
M <- solve(A)

# Find eigen vectors
X<-matrix(c(-31,12,12,14),2,2,byrow=TRUE)
eigen(X)
eigen(X)$vectors


A= matrix(seq(1:9),3,3,byrow=FALSE)
library(pracma)
Rank(A)
#install.packages(pracma)
B
dim(B)