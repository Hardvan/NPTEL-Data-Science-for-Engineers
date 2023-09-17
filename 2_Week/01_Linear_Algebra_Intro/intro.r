# ? Rows for samples
# ? Columns for variables

# Example
x <- c(1, 2, 3)
y <- c(4, 5, 6)
A <- cbind(x, y)
print(A)

# ? Rank of a matrix
# No. of linearly independent rows or columns
# Command: Rank(A) (not rank(A))

library(pracma) # For Rank() function

print("Rank Example")
A <- matrix(c(1, 2, 3, 2, 4, 6, 1, 0, 0), ncol = 3, byrow = F)
print(A)
print(Rank(A))

# ? Identification of Linear Relationships among Attributes
# Null Space of A
# AB = 0 and B != 0

# Nullity of a matrix is the no. of vectors in the null space of A
# The size of the null space of a matrix provides us with the no. of linear relations among the attributes
# The null space vectors B are useful to identify the linear relations among the attributes

# ? Rank Nullity Theorem
# Rank(A) + Nullity(A) = No. of columns of A
# where,
# Rank(A) = No. of independent variables
# Nullity(A) = No. of eqns
# No. of columns of A = Total no. of variables

# Example
print("Rank Nullity Theorem Example 1")
A <- matrix(c(1, 3, 5, 2, 4, 6), ncol = 2, byrow = F)
print(A)

columns <- ncol(A)
rank <- Rank(A)
nullity <- columns - rank

# paste() is used to concatenate strings
print(paste("Columns: ", columns)) # 2
print(paste("Rank: ", rank)) # 2
print(paste("Nullity: ", nullity)) # 0

# Nullity is 0, so all attributes are linearly independent

# Another example
print("Rank Nullity Theorem Example 2")
A <- matrix(c(1, 2, 3, 2, 4, 6, 0, 0, 1), ncol = 3, byrow = F)
print(A)

columns <- ncol(A) # No. of columns
rank <- Rank(A)
nullity <- columns - rank

print(paste("Columns: ", columns)) # 3
print(paste("Rank: ", rank)) # 2
print(paste("Nullity: ", nullity)) # 1

# Since nullity is 1, there is one linear relation among the attributes
# Thus, we need to identify the null space vector B
