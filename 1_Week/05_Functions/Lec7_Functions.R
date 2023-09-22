# Syntax
# f = function(arguments) {
#       statements
# }

volume_cylinder <- function(radius = 1, height = 1) {
    vol <- pi * radius^2 * height # ^, ** are exponentiation operators
    return(vol)
}

print(volume_cylinder(2, 3)) # 37.69911

# * Lazy Evaluation of Functions in R
# Functions are lazily evaluated,
# which means that if some arguments are missing,
# the function is still executed
# as long as the execution doesn’t involve these arguments.

# Functions in R take multiple input objects but returns only one
# object as output.
# This however is not a limitation, because a list object (collection
# of several objects) can be returned by function

volume_cylinder2 <- function(radius = 1, height = 1) {
    vol <- pi * radius^2 * height
    diameter <- 2 * radius

    result <- list("volume" = vol, "diameter" = diameter)
    return(result)
}

print(volume_cylinder2(2, 3))

# Inline Functions
func <- function(x) x^2 + 2 * x + 1

print(func(2))

# ? Looping over objects

# * apply() function
# Applies a given function over the margins of a given array or matrix.
# Arguments:
# X: array or matrix
# MARGIN: an integer vector indicating which margins should be ‘retained’.
# FUN: the function to be applied: see ‘Details’.
A <- matrix(1:9, 3, 3)
print(A)

print(apply(A, 1, sum)) # row-wise sum
print(apply(A, 2, sum)) # column-wise sum

# * lapply() function
# Applies a function over a list.
# lapply always returns a list of the same length as the input list
# Syntax: lapply(list, function)
A <- matrix(1:9, 3, 3)
B <- matrix(10:18, 3, 3)

my_list <- list(A, B)
print(my_list)

determinant <- lapply(my_list, det) # Determinant of each matrix
print(determinant)

# * mapply() function
# multivariate version of lapply.
# A function can be applied over several lists simultaneously.
# Syntax: mapply(fun, list1, list2, …)

rad <- c(1, 2, 3)
height <- c(2, 3, 4)
vol <- mapply(volume_cylinder, rad, height)
print(vol)

# * tapply() function
# Applies a function over subset of vectors given by a combination of factors
# Syntax: tapply(vector, factors, function, …)
ID <- c(1, 1, 1, 1, 2, 2, 2, 3, 3)
Values <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)

print(tapply(Values, ID, sum)) # sum of values for each ID
