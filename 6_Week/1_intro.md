# Week 6

## Lecture 1: Predictive Modelling

### Correlation

- Measure of the linear relationship between two variables.
- Correlation does not imply causation.

#### Pearson Correlation Coefficient

- Measures the linear relationship between two variables.
- Ranges from -1 to 1.
- 0 means no linear relationship.

Formula: $\rho_{X,Y} = \frac{cov(X,Y)}{\sigma_X \sigma_Y}$

#### Spearman Correlation Coefficient

- Measures the monotonic relationship between two variables.
- Ranges from -1 (monotonically decreasing) to 1 (monotonically increasing).
- 0 means no monotonic relationship.

Formula: $1 - \frac{6 \sum d_i^2}{n(n^2 - 1)}$

where, $d_i$ is the difference between the ranks of the two variables for each observation.

#### Kendall Rank Correlation Coefficient

- Correlation Coefficient to measure association between two ordinal variables.

Concordant Pair: A pair of observations ($x_i$, $y_i$) and ($x_j$, $y_j$) such that $x_i < x_j$ and $y_i < y_j$ or $x_i > x_j$ and $y_i > y_j$.

Discordant Pair: A pair of observations ($x_i$, $y_i$) and ($x_j$, $y_j$) such that $x_i < x_j$ and $y_i > y_j$ or $x_i > x_j$ and $y_i < y_j$.

Formula: $\tau = \frac{C - D}{\frac{1}{2}n(n-1)}$

where, $C$ is the number of concordant pairs and $D$ is the number of discordant pairs.

The pair for which $x_i = x_j$ and $y_i = y_j$ are not considered.

## Lecture 2: Linear Regression

### Regression Basics

- Dependent Variable: The variable we are trying to predict.
- Independent Variable: The variable we are using to predict the dependent variable.

### Ordinary Least Squares (OLS)

- Minimizes the sum of squared errors.
- The line that minimizes the sum of squared errors is the line that minimizes the distance between the line and the data points.

....to be continued
