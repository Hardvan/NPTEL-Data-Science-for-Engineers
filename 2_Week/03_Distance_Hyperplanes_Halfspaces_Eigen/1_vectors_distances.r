# ? Vectors and Distances

# * Distance between two points in 2D
A <- c(2, 7)
B <- c(5, 3)
dist <- sqrt(sum((A - B)^2)) # 5
print(dist)

# * Orthogonal vectors
# Vectors whose dot product is zero
# AᵀB = 0
print("Orthogonal vectors")
v1 <- c(1, -2, 4)
v2 <- c(2, 5, 2)
prod <- t(v1) %*% v2
print(prod)

# * Orthonormal vectors
# Orthogonal vectors with unit length

# * Basis vectors
# A set of vectors that are linearly independent and span the space
# Eg: v1 = (1, 0), v2 = (0, 1) can span R^2 and are linearly independent
# Hence they form basis vectors for R^2
# v1 = (1,1) and v2 = (1,-1) can also span R^2 and are linearly independent
# Thus, basis vectors are not unique
