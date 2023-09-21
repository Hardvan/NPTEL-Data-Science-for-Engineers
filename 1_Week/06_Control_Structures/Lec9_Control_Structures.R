# if construct
# if (condition) {
#   statements
# }

# if else construct
# if (condition) {
#   statements
# } else {
#   statements
# }

# if else if construct
# if (condition) {
#   statements
# } else if (condition) {
#   statements
# } else {
#   statements
# }

# Example
x <- 10
if (x > 0) {
    print("Positive")
} else if (x < 0) {
    print("Negative")
} else {
    print("Zero")
}

# Sequence function
# seq(from, to, by, length)
# Creates equi-spaced points between from and to

print(seq(1, 10, 2)) # 1 3 5 7 9
print(seq(1, 10, length = 5)) # 1.00 3.25 5.5 7.75 10.00
print(seq(1, 10, by = 4)) # 1 5 9

# for loop construct
# for (variable in sequence) {
#   statements
# }

n <- 5
sum <- 0
print("i sum")
for (i in seq(1, n)) { # OR for (i in 1:n)
    sum <- sum + i

    print(c(i, sum))

    if (i == 2) {
        next # like continue in C
    }

    if (i == 3) {
        break
    }
}

# while loop construct
# while (condition) {
#   statements
# }

n <- 5
sum <- 0
i <- 1
print("i sum")
while (i <= n) {
    sum <- sum + i

    print(c(i, sum))

    i <- i + 1
}
