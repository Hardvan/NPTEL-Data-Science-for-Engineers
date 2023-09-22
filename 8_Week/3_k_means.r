# Segregate the trips into clusters using k-means clustering algorithm

# * 1) Reading the data
trip_details <- read.csv("tripDetails.csv", row.names = 1)

# * 2) Viewing the data
View(trip_details)
head(trip_details) # 91 x 7

# Structure of the data
str(trip_details)

# Summary of the data
summary(trip_details)

# * 3) Implementing K-means clustering
print("K-means clustering")
trip_cluster <- kmeans(trip_details, 3) # 3 clusters
print(trip_cluster)

# Lesser the within-cluster sum of squares, better the clustering

# k calculation
k.max <- 10 # Max 10 clusters assumed
wss <- rep(NA, k.max) # Within sum of squares
nClust <- list() # List of clusters

for (i in 1:k.max) {
    driveClasses <- kmeans(trip_details, i)
    wss[i] <- driveClasses$tot.withinss
    nClust[[i]] <- driveClasses$size
}

plot(1:k.max, wss,
    type = "b",
    xlab = "No. of clusters K",
    ylab = "Total within-groups sum of squares: Trips"
)

# From the graph, we can see that the elbow is at 3
# Hence, we can conclude that the optimal no. of clusters is 3
