# Assignment Question

library(caret) # for confusionMatrix
library(ggplot2)
library(dplyr)

# Load the dataset iris.csv as a dataframe irisdata,
# with the first column as index headers,
# first row as column headers,
# dependent variable as factor variable

irisdata <- read.csv("iris.csv", row.names = 1)
irisdata$Species <- as.factor(irisdata$Species)

# View the data
View(irisdata)
head(irisdata)

# Create a directory to save the plots (adjust the path as needed)
plot_dir <- "plots/"
dir.create(plot_dir, showWarnings = FALSE)

# Create a subset of the dataframe containing only independent variables
independent_vars <- irisdata %>%
    select(-Species) # Exclude the dependent variable

# Visualize the distributions of the independent variables
# You can use histograms or other plots based on your preference
histogram_plots <- lapply(names(independent_vars), function(var_name) {
    p <- ggplot(independent_vars, aes_string(x = var_name)) +
        geom_histogram(binwidth = 0.2, fill = "blue", color = "black", alpha = 0.7) +
        labs(title = paste("Distribution of", var_name))

    # Save the plot as a PNG file
    ggsave(filename = paste0(plot_dir, var_name, "_histogram.png"), plot = p, width = 6, height = 4, dpi = 300)
})

# The plots have been saved as PNG files in the specified directory

# Find no. of rows in the dataset that contain missing values
# Hint: Use the function is.na()
print("No. of rows with missing values")
sum(is.na(irisdata))

# finding the mean of the columns PetalLength and PetalWidth in one line
print("Mean of PetalLength and PetalWidth")
lapply(irisdata[, 3:4], mean)
