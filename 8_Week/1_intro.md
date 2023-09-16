# Week 8

## Lecture 1: K-Nearst Neighbors (kNN)

- **Non-parametric method** (means no assumptions about the data)
- **Lazy learning algorithm** where all computation is deferred until classification
- **Instace-based learning algorithm** where the function is approximated locally
- **Supervised learning algorithm** where the training data is labeled
- **Majority voting algorithm** where the class label is assigned to the majority of the k nearest neighbors

### Why kNN?

- Simplest of all classification algorithms
- Easy to implement
- No explicit training phase
- Algorithm does not perform any generalization of the training data

### When to use kNN?

- Nonlinear decision boundaries between classes
- Large data set

#### Input Features

Can be both **quantitative** and **qualitative**

#### Output

- Outputs are categorical values (classes of the data)
- It explains a categorical variable using the majority votes of the k nearest neighbors.

### Assumptions

- Being non-parametric, it makes no assumptions about the underlying data
- Select the parameter k based on the data
- Requires a distance metric to define proximity between data points (Eg: Euclidean distance, Mahalanobis distance, Hamming distance, etc.)

### Algorithm

1. Compute the distance metric between the test data point and all the labeled data points
2. Order the labeled data points in increasing order of this distance metric
3. Select the top k labeled data points and look at their class labels
4. Find the class label tha the majority of these k labeled data points have and assign it to the test data point

### Things to consider

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

## Lecture 2: K-nearest neighbours implementation in R

See the code [here](./2_car_service.r)

## Lecture 3: K-means Clustering

- A technique to parition N observations into K clusters (K <= N) in which each observation belongs to the cluster with the nearest mean
- One of the simplest **unsupervised** learning algorithms
- Works well for all distance metrics where mean is defined (Eg: Euclidean distance)

### Description of K-means clustering

Given N observations ($x_1, x_2, ..., x_N$), K-means clustering will partition N observations into K sets/clusters S = {$s_1, s_2, ..., s_K$} so as to minimize the within-cluster sum of squares (WCSS) defined by:

$$
WCSS = \sum_{i=1}^{K} \sum_{x \in S_i} \left\| x - \mu_i \right\|^2
$$

where $\mu_i$ is the mean of points in $S_i$.

### Algorithm

1. Randomly choose two points as the initial cluster centers
2. Compute the distance of each point from the cluster centers and group the closest ones
3. Compute the new mean and repeat step 2
4. If the change in mean is negligible OR no reassignment of points is required, stop. Else, repeat steps 2 and 3

### Determining no. of clusters (K)

- Elbow method
  - looks at percentage of variance explained as a function of no. of clusters (K)
  - The point where marginal decrease plateaus is an indicator of the optimal no. of clusters

### Disadvantages of K-means clustering

- Could converge to a local minima, therefore role of initial cluster centers is very important
- If the clusters are not spherical, then K-means can fail to identify the correct no. of clusters
