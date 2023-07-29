# ? Projects Generalization
# X̂ = V(VᵀV)⁻¹VᵀX

# ? Hyperplanes
# A geometric entity of one less dimension than the space it is in.
# Ex: A 1D line in 2D space, a 2D plane in 3D space
# Equation:
# Xᵀn + b = 0

# ? Eigen values and vectors
# Ax = b = λx
# λ are eigen values
# solutions x are eigen vectors

# Eigen values are found using:
# |A - λI| = 0
# Substituting λ into the original equation gives the eigen vectors

# Example
print("Eigen values and vectors")
A <- matrix(c(8, 7, 2, 3), 2, 2, byrow = TRUE)
ev <- eigen(A)
print(ev)
print(ev$values)
print(ev$vectors)

# * If matrix is symmetric, then eigen vectors are always real
# n linearly independent eigen vectors for symmetric matrix

# Eigen vectors corresponding to zero eigen values span the null space of A
# Eigen vectors corresponding to non-zero eigen values span the column space of A for symmetric matrix
