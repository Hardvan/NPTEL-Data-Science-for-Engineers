# Week 8

## Lecture 1: K-Nearst Neighbors (kNN)

- **Non-parametric method** (means no assumptions about the data)
- **Lazy learning algorithm** where all computation is deferred until classification
- **Instace-based learning algorithm** where the function is approximated locally

### Why kNN?

- Simplest of all classification algorithms
- Easy to implement
- No explicit training phase
- Algorithm does not perform any generalization of the training data

## When to use kNN?

- Nonlinear decision boundaries between classes
- Large data set

### Input Features

Can be both **quantitative** and **qualitative**

### Output

- Outputs are categorical values (classes of the data)
- It explains a categorical variable using the majority votes of the k nearest neighbors.

## Assumptions

- Being non-parametric, it makes no assumptions about the underlying data
- Select the parameter k based on the data
- Requires a distance metric to define proximity between data points (Eg: Euclidean distance, Mahalanobis distance, Hamming distance, etc.)

## Algorithm

1. Compute the distance metric between the test data point and all the labeled data points
2. Order the labeled data points in increasing order of this distance metric
3. Select the top k labeled data points and look at their class labels
4. Find the class label tha the majority of these k labeled data points have and assign it to the test data point

## Things to consider

- Parameter selection (k)
  - The best choice of k depends on the data
  - Larger values of k **reduce** the effect of **noise** on classification, but make **boundaries** between classes **less distinct**
  - Small values of k make classification **boundaries more specific**, but noise in the data is more likely to cause **misclassification**
- Prescence of noise
- Feature selection and scaling
  - Remove irrelevant features
  - When the no. of features is too large and redundant, feature extraction is required
  - If features are carefully chosen, classification will be better
- Curse of dimensionality (as the number of features increases, the number of data points required to generalize accurately grows exponentially)
