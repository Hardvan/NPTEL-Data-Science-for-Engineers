# ? Recasting Dataframes
print("Original Dataframe")
pd <- data.frame(
    "Name" = c("Senthil", "Senthil", "Sam", "Sam"),
    "Month" = c("Jan", "Feb", "Jan", "Feb"),
    "BS" = c(141.2, 139.3, 135.2, 160.1),
    "BP" = c(90, 78, 80, 81)
)
print(pd)

library(reshape2) # for melt(), dcast(), recast() functions

# Step 1: Melt
print("Melted Dataframe")
Df <- melt(pd,
    id.vars = c("Name", "Month"),
    measure.vars = c("BS", "BP")
)
print(Df)

# Step 2: Cast
print("Casted Dataframe")
Df2 <- dcast(Df,
    variable + Month ~ Name, # Columns "variable" and "month" to remain as is, Cast "Name" as columns
    value.var = "value"
)
print(Df2)

# Recasting in one step
print("Recasting in one step")
Df3 <- recast(pd,
    variable + Month ~ Name, # Cast step
    id.var = c("Name", "Month") # Melt step
)
print(Df3)

library(dplyr) # for mutate(), various join functions

# Add new variable to dataframe based on existing ones
print("Add new variable to dataframe based on existing ones")
pd2 <- mutate(pd, log_BP = log(BP))
print(pd2)

# Joining of two frames
# Syntax: function(dataframe1, dataframe2, by = id.variable)

print("Joining of two frames")
print("Dataframe 1")
pd <- data.frame(
    "Name" = c("Senthil", "Senthil", "Sam", "Sam"),
    "Month" = c("Jan", "Feb", "Jan", "Feb"),
    "BS" = c(141.2, 139.3, 135.2, 160.1),
    "BP" = c(90, 78, 80, 81)
)
print(pd)

print("Dataframe 2")
pd_new <- data.frame(
    "Name" = c("Senthil", "Ramesh", "Sam"),
    "Department" = c("PSE", "Data Analytics", "PSE")
)
print(pd_new)

print("Using left_join")
pd_left_join <- left_join(pd, pd_new, by = "Name")
print(pd_left_join)

print("Using right_join")
pd_right_join <- right_join(pd, pd_new, by = "Name")
print(pd_right_join)

# Reverse the order of the dataframes for right_join
print("Reverse the order of the dataframes for right_join")
pd_right_join <- right_join(pd_new, pd, by = "Name")
print(pd_right_join)

print("Using inner_join")
pd_inner_join <- inner_join(pd, pd_new, by = "Name")
print(pd_inner_join)

print("Using full_join")
pd_full_join <- full_join(pd, pd_new, by = "Name")
print(pd_full_join)
