# ? Dataframes
# Generic data objects of R that are used to store tabular data

# Create a dataframe
vec1 <- c(1, 2, 3)
vec2 <- c("R", "SciLab", "Java")
vec3 <- c("For prototyping", "For prototyping", "For production")

df <- data.frame(vec1, vec2, vec3)
print(df)

# Create a dataframe using data from a file
# newDf <- read.table(path = "path/to/file")

# In the path use / instead of \ for Windows

# A separator can be specified using sep = "separator"
# Default separator is ""
# newDf <- read.table(path = "path/to/file", sep = "separator")

# Accessing rows and columns
# df[val1, val2] refers to row val1 and column val2. Can be number or string
# "val1" or "val2" can also be array of values like "1:2" or "c(1, 3)"
# df[val2](no commas) refers to column val2

# Accessing 1st & 2nd row
print("Accessing 1st & 2nd row")
print(df[1:2, ])

# Accessing 1st & 2nd column
print("Accessing 1st & 2nd column")
print(df[, 1:2])
# OR
print(df[1:2])

# ? Subset
# subset() function is used to extract data from a dataframe based on conditions
pd <- data.frame(
    "Name" = c("Senthil", "Senthil", "Sam", "Sam"),
    "Month" = c("Jan", "Feb", "Jan", "Feb"),
    "BS" = c(141.2, 139.3, 135.2, 160.1),
    "BP" = c(90, 78, 80, 81)
)
pd2 <- subset(pd, Name == "Senthil" | BS > 150) # | is OR
print("new subset pd2")
print(pd2)

# Editing dataframes
df[[2]][2] <- "Python" # OR df[2, 2] <- "Python"
print("df after editing")
print(df)

# OR using edit() function
# Opens a table editor to edit the dataframe
# myTable <- data.frame()
# edit(myTable)

# Adding extra rows and columns
# Extra row can be added with rbind()
# Extra column can be added with cbind()
print("adding extra row")
df <- rbind(df, data.frame(
    vec1 = 4,
    vec2 = "C",
    vec3 = "For Scaleup"
))
print(df)

print("adding extra col")
df <- cbind(df, vec4 = c(10, 20, 30, 40))
print(df)

# Deleting rows and columns
print("df2 after deleting 3rd row and 1st column")
df2 <- df[-3, -1] # deletes 3rd row and 1st column
print(df2)

# Condidtional deletion
print("Conditional deletion")
df3 <- df[, !names(df) %in% c("vec3")] # deletes column vec3
print(df3)

df4 <- df[!df$vec1 == 3, ] # deletes row with vec1 = 3
print(df4)

# Factor issue
# When character columns are created in a data.frame, they become factors
df[3, 1] <- 3.1
df[3, 3] <- "Others"
print(df)

# Resolving factor issue
# New entries need to be consistent with factor levels which are fixed
# when the dataframe is first created
vec1 <- c(1, 2, 3)
vec2 <- c("R", "Scilab", "Java")
vec3 <- c("For prototyping", "For prototyping", "For Scaleup")
df <- data.frame(vec1, vec2, vec3,
    stringsAsFactors = F
) # ? stringsAsFactors
# Now trying the same manipulation
df[3, 3] <- "Others"
print(df)
