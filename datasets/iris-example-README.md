# Iris Example Dataset

## Description

This is a classic dataset used for statistical analysis and machine learning. It contains measurements of iris flowers from three different species.

## File

- `iris-example.csv`

## Variables

| Variable | Description | Type | Units |
|----------|-------------|------|-------|
| Sepal.Length | Length of the sepal | Numeric | centimeters |
| Sepal.Width | Width of the sepal | Numeric | centimeters |
| Petal.Length | Length of the petal | Numeric | centimeters |
| Petal.Width | Width of the petal | Numeric | centimeters |
| Species | Species of iris | Categorical | setosa, versicolor, virginica |

## Size

- **Rows:** 30 (sample from original dataset)
- **Columns:** 5
- **Species:** 3 (10 observations each)

## Source

This is a subset of the famous Iris dataset originally collected by Edgar Anderson and popularized by Ronald Fisher (1936).

## Usage

This dataset is commonly used for:
- Classification problems
- Exploratory data analysis
- Visualization practice
- Statistical testing
- Machine learning demonstrations

## Example Loading Code (R)

```r
# Load the dataset
iris_data <- read.csv("iris-example.csv")

# View structure
str(iris_data)

# Summary statistics
summary(iris_data)

# Plot examples
plot(iris_data$Sepal.Length, iris_data$Sepal.Width, 
     col = iris_data$Species, 
     xlab = "Sepal Length", 
     ylab = "Sepal Width",
     main = "Iris Measurements")
legend("topright", legend = levels(iris_data$Species), 
       col = 1:3, pch = 1)
```

## Reference

Fisher, R. A. (1936). The use of multiple measurements in taxonomic problems. *Annals of Eugenics*, 7(2), 179-188.
