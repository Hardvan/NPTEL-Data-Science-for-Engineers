# Important Points

1. Sum of Squares Total (SST) – The sum of squared differences between **individual data points** (yi) and the **mean** of the response variable ($\bar{y}$).

   $SST = Σ(y_i – \bar{y})^2$

2. Sum of Squares Regression (SSR) – The sum of squared differences between **predicted data points** (ŷi) and the **mean** of the response variable ($\bar{y}$).

   $SSR = Σ(ŷ_i – \bar{y})^2$

3. Sum of Squares Error (SSE) – The sum of squared differences between **observed data points** ($y_i$) and **predicted data points** ($ŷ_i$).

   $SSE = Σ(y_i – ŷ_i)^2$

## Formula For R²

$R² = \frac{SSR}{SST} = 1 - \frac{SSE}{SST}$

where,  
$SSR$ = Sum of Squares Regression  
$SSE$ = Sum of Squares Error  
$SST$ = Sum of Squares Total  
$SST = SSR + SSE$  
$R²$ = Coefficient of Determination  
<br />
Sum of squares error (SSE) is also known as the residual sum of squares (RSS), but some individuals denote it as SSR, which is also the abbreviation for the sum of squares due to regression.

## Adjusted R²

$R²_{adj} = 1 - \frac{(1 - R²)(n - 1)}{n - p - 1}$

where,  
$n$ = no. of observations  
$p$ = no. of independent variables  
$R²_{adj}$ = Adjusted Coefficient of Determination

## y = $β_0 + β_1x$

- $β_0$ = Intercept
- $β_1$ = Slope
- $x$ = Independent Variable
- $β_0 + β_1x$ = Predicted Value
- $y$ = Dependent Variable

$β_1 = \frac{S_{xy}}{S_{xx}}$

where,  
$S_{xy} = Σ(x_i - \bar{x})(y_i - \bar{y})$  
$S_{xx} = Σ(x_i - \bar{x})^2$

$β_0 = \bar{y} - β_1\bar{x}$

where,  
$\bar{x}$ = Mean of $x$  
$\bar{y}$ = Mean of $y$

## F-Statistic

$F = \frac{SSR/p}{SSE/(n-p-1)}$

where,  
n = no. of observations  
p = no. of independent variables
