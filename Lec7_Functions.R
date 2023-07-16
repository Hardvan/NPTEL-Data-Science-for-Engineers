# Syntax
# f = function(arguments) {
#       statements
# }

volume_cylinder <- function(radius = 1, height = 1) {
    vol <- pi * radius^2 * height # ^, ** are exponentiation operators
    return(vol)
}

print(volume_cylinder(2, 3))

# * Lazy Evaluation of Functions in R
# Functions are lazily evaluated,
# which means that if some arguments are missing,
# the function is still executed
# as long as the execution doesn’t involve these arguments.
