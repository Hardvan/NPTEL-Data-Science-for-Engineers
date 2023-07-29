# ? Solving Linear Equations
# Ax = b
# A: m x n
# x: n x 1
# b: m x 1
# m: no. of eqns
# n: no. of variables

# * Cases
# If m = n, easy to solve
# If m > n, usually no solution
# If m < n, usually multiple solutions

# * Case 1: m = n
# If A is full rank and |A| != 0, then there is a unique solution
# If A is not full rank, then there are either no solutions or multiple solutions

# Example
print("Case 1 Example 1")
A <- matrix(c(1, 2, 3, 4), ncol = 2, byrow = F)
b <- c(7, 10)
x <- solve(A) %*% b # solve(A) is the inverse of A
# OR
# x <- solve(A, b)
print(x)

# Another example
print("Case 1 Example 2")
A <- matrix(c(1, 2, 2, 4), ncol = 2, byrow = F)
b <- c(5, 10)
x <- solve(A) %*% b # Error: singular matrix (Infinitely many solutions)
print(x)

# Another example
print("Case 1 Example 3")
A <- matrix(c(1, 2, 2, 4), ncol = 2, byrow = F)
b <- c(5, 9)
x <- solve(A) %*% b # Error: singular matrix (Inconsistent)
print(x)
