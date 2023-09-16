# This data set contains statistics, in arrests per 100,000 residents
# for assault, murder, and rape in each of the 50 US states in 1973.
# Also given is the percent of the population living in urban areas.

# Set the column “States” as index of the data frame while reading the data
# Set the random number generator to set.seed(123)
# Normalize the data using scale function and build the K-means algorithm with the given conditions:
# No. of clusters = 4
# nstart = 20

# 1) Reading the data and setting the "States" column as the index
us_arrests <- read.csv("USArrests.csv", row.names = 1)

# 2) Viewing the data
head(us_arrests)

# 3) Normalize the data using the scale function
scaled_data <- scale(us_arrests)

# 4) Implementing K-means clustering with 4 clusters and nstart = 20
set.seed(123)
kmeans_result <- kmeans(scaled_data, 4, nstart = 20)

# 5) View the clustering results
kmeans_result

print("BCSS Value")
print(kmeans_result$betweenss)

print("Total Sum of Squares value")
print(kmeans_result$totss)
