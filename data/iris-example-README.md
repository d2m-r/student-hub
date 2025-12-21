# Iris Example Dataset

## Description

This is a subset of the famous Iris dataset originally collected by Edgar Anderson and popularized by Ronald Fisher (1936).
`iris` is a classic dataset used for teaching, learning, and practicing programming and statistical analysis/
It contains measurements of sepal and petal size from three different species of flowers: *Iris setosa*, *Iris versicolor*, and *Iris virginica*.


## File

- `iris-example.csv`
    - **Rows:** 30 (sample from original dataset)
    - **Columns:** 5
    - **Species:** 3 (10 observations each)
- You can access the full dataset in R using the command `data(iris)`.


## Variables

| Variable | Description | Type | Units |
|----------|-------------|------|-------|
| Sepal.Length | Length of the sepal | Numeric | centimeters |
| Sepal.Width | Width of the sepal | Numeric | centimeters |
| Petal.Length | Length of the petal | Numeric | centimeters |
| Petal.Width | Width of the petal | Numeric | centimeters |
| Species | Species of iris | Categorical | setosa, versicolor, virginica |


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

