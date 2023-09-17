# ? Arithmetic Opearations
# In R only <- is valid for assignment operation where as in
# R Studio both = and <- will work
# +, -, *, /, ^, %% (modulus), %/% (integer division)

# ? Logical Operations
# <, >, <=, >=, ==, !=, !, &, |, xor(), isTRUE()

# ? Matrix Operations

# Creating a matrix

# Empty matrix
A <- matrix() # matrix() function
print(A)

# Filled by column (default)
A <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9))
print(A)

# 3x3 matrix filled by row
A <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    nrow = 3,
    ncol = 3,
    byrow = TRUE # byrow = FALSE is default
)
print(A)

# Matrix with all elements as k
k <- 10
A <- matrix(k, 3, 3)
print(A)

# Diagonal matrix
A <- diag(k, 3, 3)
print(A)

# Identity matrix
A <- diag(1, 3, 3)
print(A)

# Matrix metrics

# dim(A) will return the dimension of the matrix
print(dim(A))

# nrow(A) will return the no. of rows in the matrix
print(nrow(A))

# ncol(A) will return the no. of columns in the matrix
print(ncol(A))

# prod(dim(A)) OR length(A)
# will return the no. of elements in the matrix
print(prod(dim(A)))
print(length(A))

# Changing column names
A <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3, byrow = TRUE)
colnames(A) <- c("A", "B", "C")
rownames(A) <- c("X", "Y", "Z")
print(A)
print(A[, 1:2])
print(A[, c("A", "C")])
print(A[c("X", "Z"), ])

# Accessing last row
print(A[nrow(A), ])

# Accessing all columns except one (use - sign before column number)
print("Accessing all columns except one")
print(A[, -2])
print(A[, -c(1, 3)])

# Practice
print("Practice")
A <- matrix(c(1, 7, 3, 4, 4, 6, 4, 7, 12), nrow = 3, ncol = 3, byrow = TRUE)
print(A)

# Change the element 12 to 13
A[3, 3] <- 13

# Access the second row & third column
print(A[2, 3])

# List all elements in second column & third row
print(A[, 2])
print(A[3, ])

# Colon operator
# 1:10 will return a vector of numbers from 1 to 10
# 1:2:10 will return a vector of numbers from 1 to 10 with a step of 2
# 10:2 will return a vector of numbers from 10 to 2
print(1:10)
print(10:1)

# Sub matrix selection
A <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3, byrow = TRUE)
print(A[1:3, 1:2])
print(A[1:2, c(1, 3)])

# Matrix concatenation
# rbind() will concatenate matrices by row if they have same no. of columns
# cbind() will concatenate matrices by column if they have same no. of rows

# 3x3
A <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3, byrow = TRUE)
# 1x3
B <- matrix(c(10, 11, 12), nrow = 1, ncol = 3, byrow = TRUE)

print("rbind")
C <- rbind(A, B)
print(C)

# 3x1
B <- matrix(c(10, 11, 12), nrow = 3, ncol = 1, byrow = TRUE)

print("cbind")
C <- cbind(A, B)
print(C)

# C <- rbind(A, B) # Error

# Deleting a column
A <- A[, -2]
print(A)

# ? Matrix Algebra
A <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3, byrow = TRUE)
B <- matrix(c(10, 11, 12, 13, 14, 15, 16, 17, 18), nrow = 3, ncol = 3, byrow = TRUE)

# Addition
C <- A + B
print(C)

# Subtraction
C <- A - B
print(C)

# Regular matrix multiplication
C <- A %*% B
print(C)

# Element wise multiplication
C <- A * B
print(C)

# Element wise division
C <- A / B
print(C)

# Transpose
C <- t(A)
print(C)
