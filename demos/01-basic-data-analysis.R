# Demo: Basic Data Analysis in R
# Description: Introduction to loading, exploring, and visualizing data
# Course: [Course Name]
# Date: [Date]

# ==============================================================================
# Setup
# ==============================================================================

# Clear workspace
rm(list = ls())

# Load required libraries
# If you don't have these packages, install them first:
# install.packages("ggplot2")
library(ggplot2)

# ==============================================================================
# 1. Loading Data
# ==============================================================================

# Option 1: Load from CSV file
# Assuming the iris dataset is in the datasets folder
data_path <- "../datasets/iris-example.csv"

# Check if file exists
if(file.exists(data_path)) {
  iris_data <- read.csv(data_path)
  cat("Data loaded successfully!\n")
} else {
  # Option 2: Use built-in R dataset
  set.seed(123)  # Set seed for reproducibility
  iris_data <- iris[sample(1:nrow(iris), 30), ]
  cat("Using built-in iris dataset\n")
}

# ==============================================================================
# 2. Exploring Data Structure
# ==============================================================================

# View first few rows
cat("\n--- First 6 rows of data ---\n")
print(head(iris_data))

# Check data structure
cat("\n--- Data Structure ---\n")
str(iris_data)

# Summary statistics
cat("\n--- Summary Statistics ---\n")
print(summary(iris_data))

# Check for missing values
cat("\n--- Missing Values ---\n")
print(colSums(is.na(iris_data)))

# ==============================================================================
# 3. Basic Statistical Analysis
# ==============================================================================

# Calculate mean by species
cat("\n--- Mean Sepal Length by Species ---\n")
means <- aggregate(Sepal.Length ~ Species, data = iris_data, FUN = mean)
print(means)

# Calculate correlation between variables
cat("\n--- Correlation Matrix (numeric variables only) ---\n")
numeric_cols <- iris_data[, sapply(iris_data, is.numeric)]
cor_matrix <- cor(numeric_cols)
print(round(cor_matrix, 3))

# ==============================================================================
# 4. Basic Visualizations
# ==============================================================================

# Histogram of Sepal Length
hist(iris_data$Sepal.Length,
     main = "Distribution of Sepal Length",
     xlab = "Sepal Length (cm)",
     col = "lightblue",
     breaks = 10)

# Boxplot by Species
boxplot(Sepal.Length ~ Species, data = iris_data,
        main = "Sepal Length by Species",
        xlab = "Species",
        ylab = "Sepal Length (cm)",
        col = c("red", "green", "blue"))

# Scatter plot
plot(iris_data$Sepal.Length, iris_data$Sepal.Width,
     col = as.numeric(iris_data$Species),
     pch = 19,
     xlab = "Sepal Length (cm)",
     ylab = "Sepal Width (cm)",
     main = "Sepal Dimensions by Species")
legend("topright", 
       legend = levels(iris_data$Species),
       col = 1:length(levels(iris_data$Species)),
       pch = 19)

# ==============================================================================
# 5. Using ggplot2 (optional, if package is available)
# ==============================================================================

if("ggplot2" %in% loadedNamespaces()) {
  # Create a more sophisticated scatter plot
  p <- ggplot(iris_data, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
    geom_point(size = 3) +
    labs(title = "Iris Sepal Dimensions",
         x = "Sepal Length (cm)",
         y = "Sepal Width (cm)") +
    theme_minimal()
  
  print(p)
}

# ==============================================================================
# 6. Exporting Results
# ==============================================================================

# Save summary statistics to a text file
# sink("analysis_summary.txt")
# cat("=== Iris Data Analysis Summary ===\n\n")
# print(summary(iris_data))
# cat("\n=== Mean Sepal Length by Species ===\n")
# print(means)
# sink()
# cat("\nSummary saved to analysis_summary.txt\n")

# ==============================================================================
# End of Demo
# ==============================================================================

cat("\n=== Demo Complete ===\n")
cat("This script demonstrated:\n")
cat("  1. Loading data from CSV\n")
cat("  2. Exploring data structure\n")
cat("  3. Computing summary statistics\n")
cat("  4. Creating basic visualizations\n")
cat("  5. Using ggplot2 for advanced plots\n")
cat("\nTry modifying this script to explore other variables!\n")
