# * Case 2: m > n
# Optimization: x = (A'A)^-1 * A'b

# Example
print("Case 2 Example")
A <- matrix(c(1, 2, 3, 0, 0, 1), ncol = 2, byrow = F)
b <- matrix(c(1, 2, 5), ncol = 1, byrow = F)
x <- solve(t(A) %*% A) %*% t(A) %*% b # Use solve instead of inv
print(x)

# * Case 3: m < n
# Optimization: x = A'(AA')^-1 * b

# Example
print("Case 3 Example")
A <- matrix(c(1, 2, 3, 0, 0, 1), ncol = 3, byrow = T)
b <- matrix(c(2, 1), ncol = 1, byrow = F)
x <- t(A) %*% solve(A %*% t(A)) %*% b
print(x)

# Generalizing the results obtained from cases 1, 2, and 3, we can use:
# ? Moore-Penrose pseudo-inverse
# Psuedo inverse is used as follows:
# Ax = b
# The solution is given by:
# x = (A^+)b
# Singular Value Decomposition (SVD) is used to compute the pseudo-inverse or generalized inverse (A^+)

library(MASS) # For ginv() function

# Revisiting Examples
print("Revisiting Examples")
print("Case 2 Example")
A <- matrix(c(1, 2, 3, 0, 0, 1), ncol = 2, byrow = F)
b <- matrix(c(1, 2, 5), ncol = 1, byrow = F)
x <- ginv(A) %*% b
print(x)

print("Case 3 Example")
A <- matrix(c(1, 2, 3, 0, 0, 1), ncol = 3, byrow = T)
b <- matrix(c(2, 1), ncol = 1, byrow = F)
x <- ginv(A) %*% b
print(x)
