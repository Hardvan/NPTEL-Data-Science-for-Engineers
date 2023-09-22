# = and -<
# The operators <- and = assign into the environment in which they are evaluated.
# The operator <- can be used anywhere,
# whereas the operator = is only allowed at the top level

# ? Variable naming rules
# Allowed characters: alphanumeric, _, .
# Cannot start with a number
# Cannot use reserved words
# Case sensitive

# ? Predefined Constants
# Constant          |       Symbol in R
# -------------------------------------
# Pi                |       pi
# letters           |       a, b, c, …, z
# LETTERS           |       A, B, C, …, Z
# Months in a year  |       month.name, month.abb

# ? Basic Data Types
# Data Type         |       Values
# -------------------------------------
# Logical           |       TRUE, FALSE
# Integer           |       Set of all integers (Z)
# Numeric           |       Set of all real numbers
# Complex           |       Set of all complex numbers
# Character         |       Set of all character values

# Task -> Action -> Syntax/Example
# --------------------------------------------------------------
# Find data type of object -> typeof(object) or class(object) -> typeof(1.5) or class(1.5)

# Verify if object is of a particular data type -> use prefix is. before data type -> is.numeric(1.5)

# Convert object to a particular data type -> as.data.type(object) -> as.numeric(1.5)

# Note : Not all coercions are possible and if attempted will return "NA" as output

typeof(1) # double
typeof("Hello") # character

is.character("Hello") # TRUE
is.character((as.Date("2019-01-01"))) # FALSE

as.complex(1) # 1+0i
as.numeric("Hello") # NA

# ? Basic objects
# Object            |       Description
# -------------------------------------
# vector            |       Ordered collection of elements of same type
# list              |       Ordered collection of elements of different type
# data frame        |       Generic tabular object for storing data in rows and columns

# ? Vectors
x <- c(1, 2, 3, 4, 5) # c() is used to create a vector
print(x)

# ? Lists
id <- c(1, 2, 3, 4)
emp.name <- c("John", "Jim", "Jack", "Jill")
num.emp <- 4

emp.list <- list(id, emp.name, num.emp) # list() is used to create a list
print(emp.list)

# Accessing components of a list
# by name
emp.list <- list(
    "ID" = id,
    "Names" = emp.name,
    "Total Staff" = num.emp
)
print(emp.list$Names)

# by index
# To access top level components, use double slicing operator “[[ ]]”
# For lower/inner level components use “[ ]” along with “[[ ]]”
print("In index")
print(emp.list[[1]]) # 1,2,3,4
print(emp.list[[2]]) # John, Jim, Jack
print(emp.list[[1]][1]) # 1
print(emp.list[[2]][1]) # John

# Modify components of a list
print("Modify")
emp.list["Total Staff"] <- 5 # Add new component
emp.list[[2]][2] <- "Jim Halpert" # Modify existing component
emp.list[[1]][1] <- 5
print(emp.list)

# Concatenate lists
print("Concatenate")
emp.ages <- list("ages" = c(25, 30, 35, 40))

emp.list <- c(emp.list, emp.ages)
print(emp.list)
