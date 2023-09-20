# R program to add two matrices

# Creating 1st Matrix
B = matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)
# Creating 2nd Matrix
C = matrix(c(7, 8, 9, 10, 11, 12), nrow = 2, ncol = 3)

# Getting number of rows and columns
num_of_rows = nrow(B)
num_of_cols = ncol(B)

# Creating matrix to store results
sum = matrix(, nrow = num_of_rows, ncol = num_of_cols)
for(row in 1:num_of_rows)
  
  
{
  for(col in 1:num_of_cols)
  {
    sum[row, col] <- B[row, col] + C[row, col]
  }
}

# Printing Original matrices
print(B)
print(C)
print(sum)


# R program for matrix addition
# using '+' operator

# Creating 1st Matrix
B = matrix(c(1, 2 + 3i, 5.4, 3, 4, 5), nrow = 2, ncol = 3)

# Creating 2nd Matrix
C = matrix(c(2, 0i, 0.1, 3, 4, 5), nrow = 2, ncol = 3)


# R program to subtract two matrices

# Creating 1st Matrix
B = matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)

# Creating 2nd Matrix
C = matrix(c(7, 8, 9, 10, 11, 12), nrow = 2, ncol = 3)

# Getting number of rows and columns
num_of_rows = nrow(B)
num_of_cols = ncol(B)

# Creating matrix to store results
diff = matrix(, nrow = num_of_rows, ncol = num_of_cols)

# Printing Original matrices
print(B)
print(C)

# Calculating diff of matrices
for(row in 1:num_of_rows)
{
  for(col in 1:num_of_cols)
  {
    diff[row, col] <- B[row, col] - C[row, col]
  }
}

# Printing resultant matrix
print(diff)

# R program for matrix subtraction
# using '-' operator

# Creating 1st Matrix
B = matrix(c(1, 2 + 3i, 5.4, 3, 4, 5), nrow = 2, ncol = 3)

# Creating 2nd Matrix
C = matrix(c(2, 0i, 0.1, 3, 4, 5), nrow = 2, ncol = 3)

# Printing the resultant matrix
print(B - C)

# R program for matrix multiplication
# using '*' operator

# Creating 1st Matrix
B = matrix(c(1, 2 + 3i, 5.4), nrow = 1, ncol = 3)

# Creating 2nd Matrix
C = matrix(c(2, 1i, 0.1), nrow = 1, ncol = 3)

# Printing the resultant matrix
print (B * C)
print (B %*% C)

# R program for matrix division
# using '/' operator

# Creating 1st Matrix
B = matrix(c(4, 6i, -1), nrow = 1, ncol = 3)

# Creating 2nd Matrix
C = matrix(c(2, 2i, 0), nrow = 1, ncol = 3)

# Printing the resultant matrix
print (B / C)


# the matrix function
# R wants the data to be entered by columns starting with column one
# 1st arg: c(2,3,-2,1,2,2) the values of the elements filling the columns
# 2nd arg: 3 the number of rows
# 3rd arg: 2 the number of columns
A <- matrix(c(2,3,-2,1,2,2),3,2)
is.matrix(A)
is.vector(A)
#multiplication by a scalar
c <- 3
c*A
3*A
#matrix multiplication
#In R, a matricial multiplication can be performed with the %*% operator
A <- matrix(c(2,3,-2,1,2,2),3,2)
D <- matrix(c(2,-2,1,2,3,1),2,3)
C <- D %*% A
C
C1 <- D * A
C1
#Matrix crossproduct
A <- matrix(c(2,3,-2,1,2,2),3,2)
D <- matrix(c(2,-2,1,2,3,1),3,2)
crossprod(A, D)# t(A)%*%D
A <- matrix(c(10, 8,5, 12), ncol = 2, byrow = T)
A
Af <- matrix(c(10, 8,5, 12), ncol = 2, byrow = F)
Af
B <- matrix(c(5, 3,15, 6), ncol = 2, byrow = TRUE)
B
crossprod(A, B)#Equivalent to t(A) %*% B
t(A)#Transpose of A
tcrossprod(A, B)#Equivalent to A %*% t(B)
dot(A,D)# dot product

#Power of a matrix in R
A <- matrix(c(10, 8,5, 12), ncol = 2, byrow = TRUE)
# install.packages("expm")
library(expm) 
A %^% 2
A
# install.packages("matrixcalc")
library(matrixcalc)    
matrix.power(A, 2)
A
A4= A %^% 4
A4
A5= A %^% 5
A5
diff = A5-A4
det_A = det(diff)
det_A

#Inverse of a matrix
#In order to calculate the inverse of a matrix in R you can make use of the solve function.
M <- solve(A)
M
A %*% M
#main use of the solve function is to solve a system of equations, if you want to calculate the solution to A%*%X=B you can type:
solve(A, B)

#Rank of a matrix in R
#The rank of a matrix is maximum number of columns (rows) that are linearly independent. In R there is no base function to calculate the rank of a matrix but we can make use of the qr function, which in addition to calculating the QR decomposition, returns the rank of the input matrix. An alternative is to use the rankMatrix function from the Matrix package.
qr(A)$rank # 2
qr(B)$rank # 2
# Equivalent to:
library(Matrix)
rankMatrix(A)[1] # 2

# Make diagonal matrix
diag(c(7, 9, 2))
diag(4)

#Eigenvalues and eigenvectors in R
eigen(A)
eigen(B)
eigen(A)$values

eigen(A)$vectors

#for more info, please visit the site
#https://r-coder.com/matrix-operations-r/#Matrix_multiplication
#


print(M <- matrix(c(1:9), 3, 3, T))
print(N <- matrix(c(10, 11, 19), 1, 3, T))
nf=t(N)
print(CB <- cbind(M, nf)) 
