# Week 7

## Lecture 1: Cross Validation

1. **Training Set**: Used to `train` the model
2. **Validation Set**: Used to `tune` the model
3. **Test Set**: Used to `evaluate` the model

### Leave One Out Cross Validation (LOOCV)

A method of cross validation where we leave one observation out of the training set and use it as the validation set. We repeat this process until each observation has been used as the validation set. We then average the results to get the LOOCV estimate.

#### Advantages

- Less bias comparison compared to the validation set approach. (Training set contains $n-1$ observations each iteration)
- Yield the same results (No randomness in the training/validation set split)
- Does not overestimate the test error rate as much as the validation set approach

#### Disadvantages

- Expensive to implement due to fitting happens $n$ times
- It may select a model of excessive size (more variables) than the optimal model

### k-Fold Cross Validation

A method of cross validation where we randomly split the training set into $k$ groups of approximately equal size. The first group is treated as the validation set and the model is fit on the remaining $k-1$ groups. We repeat this process $k$ times, each time using a different group as the validation set. We then average the results to get the k-fold CV estimate.

- If $k$ = $n$, we get LOOCV
- If $k$ = 5 or 10, we get 5-fold or 10-fold CV (most common)
- Less computation cost

- LOOCV fits the model $n$ times
- k-fold CV fits the model $k$ times

## Lecture 2: Multiple Linear Regression Model Building and Selection

Refer this code: [multiple_linear_regression](./2_multiple_linear_regression.r)
