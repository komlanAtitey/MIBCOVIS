
# MUBCOVID: A MUltiscale – MUltivariate - MUltilevel Benchmarking and Computational framework for Optimal Visualization and Interpretability of high-dimensional separable Data

** MUBCOVID uses a multivariate metric to assess five features characterizing the interpretability of projection in terms of fidelity of a good coverage, uniform spread of the projected data, preserving structure of the original dataset, time dependency of the projected data, and number of outliers of dense clusters. Specifically, it builds a moderation-effect multilevel Bayesian model for benchmarking the accuracy of various methods derived from the correlation of the above features.**

** MUBCOVID benchmarks the performance of six major data reduction methods (major-DRMs): t-SNE, UMAP, PCA, Autoencoder (AE), SCVIS, and PHATE applied to visualize three different dynamic biological processes including the CyTOF EMT dataset, the scRNA-seq IPSC and spermatogenesis datasets. On the basis of the labeled set of the 3 datasets, MUBCOVID provides an additional label set of datasets by using the machine learning approach of semi-supervised learning.** 

** MUBCOVID also establishes an optimized Variational Autoencoder (oVAE) as an optimal benchmarking method when the user is uncertain about which visualization feature to optimize in dimension reduction of single cell data.**

# A quick look to the MUBCOVID computational framework

**Stages in MUBCOVID model framework for optimal visualization and interpretability of dimensionality reduction methods.pdf**.

**a/** Six dimensionality reduction methods selected  spanning three different model classes (Linear, non-linear, and Neural Network) used by MUBCOVID on different types of data. All the three classes reduce the number of dimensions but in different ways and produce different visual outputs. 

**b/** Metric set for data visualization and interpretability assessment. Five different quantitative metrics highlighted to evaluate and compare the performance of the DRMs for good visualization. 

**c/** MUBCOVID computational framework to quantify, compare, visualize and interpret reduced high-dimensional data. Y1, Y2, and Y3 stand respectively for accuracy scores in reducing the EMT, IPSC, and Spermatogenesis single cell data used in our study. 

**Step 1:** Evaluate the correlation between feature of metrics for a given accuracy Y1, Y2, or Y3 of DRM. Based on the fact that the performance of methods vary according to the features of metrics, we define the accuracy of a method in reducing a high dimensional single cell data in terms of the dependency between the 5 features of the 5 metrics.

**Step 2:** Bayesian multilevel modeling to describe the performance of a method for a choosen feature of a metric as conditional depending on the moderation effects of other features of metrics. MUBCOVID models the relationship between multiple independent or predictor variables (metric features) and one dependent or criterion variable (Accuracy of method defined independently by Y1, Y2, and Y3 respectively for the EMT, IPSC, and spermatogenesis single cell data). The multilevel design allows the multivariate  modeling of visualization performance at the same time, thus, taking complex dependency structures into account. 

**Step 3:** Compute the posterior distribution of the conditional effect of a feature of metric on the performance of a method for a given accuracy and use the Markov Chain Monte Carlo (MCMC) sample to analyse the posterior distribution.

**Step 4:** Evaluate MCMC representativeness, accuracy, and efficiency on the basis of constructing 4 different chains affiliated to 4 different initial values and use a high density interval (HDI) to summarise the posterior distribution to enable performance comparison of DRMs in terms of different features of metrics.


** MUBCOVID also establishes an optimized Variational Autoencoder (oVAE) as an optimal benchmarking method when the user is uncertain about which visualization feature to optimize in dimension reduction of single cell data.

## Metric set for data visualization and interpretability assessment.
We proposed 5 metrics with 5 different features to evaluate the performance of dimension reduction methods in terms of good visualization and interpretability. 

### Separability index
Feature of Presenting few outliers

### Gradient boosting classifier index
Feature of Minimum variance and bias

### Occupation index
Feature of Good coverage of the 2-dimensional space

### Uniformity index
Feature of Visually separable of clusters in the 2-dimensional space

### Time order structure index
Feature of time dependency of data points in the 2-dimensional space

## Evaluate the moderation effect between features of metrics for good visualization
Model the global relationships between metric features across various methods by assessing the correlation between features of metrics through Spearman correlation coefficient.

## Bayesian multilevel modeling 
MUBCOVID computational framework to quantify, compare, visualize and interpret reduced high-dimensional data.

### brms for Bayesian Multilevel modelling
Use the R package brms to model the relationship between the accuracy of a DRM in high dimension reduction and the moderation effect of features of metrics for good visualization and interpretability. Model the posterior distribution of the conditional effect of a feature of a metric on the performance of a DRM in dimension reduction.

### MCMC representativeness and accuracy of the posterior distribution
The posterior distribution represents uncertainty in the visualization and interpretability performance metric of a given data reduction method. 

-	Use the Markov Chain Monte Carlo (MCMC) sample to analyze the posterior distribution. 
-	Evaluate MCMC representativeness, accuracy, and efficiency on the basis of constructing 4 different chains affiliated to 4 different initial values.
-	Use a high-density interval (HDI) to summarize the posterior distribution to enable performance comparison of DRMs in terms of different features of metrics.

### Average performance of DRMs
compute the average performance of DRMs in terms of the 3 different single cell data used

### Variability of clusters
Make use of variability of cluster centroids which is a robust location measure representing the center of the cluster. Comparing variance of clusters enable the evaluation of how far apart the centroids of the clusters in the reduced 2D space are from one another since high variance displays good separation between clusters.

-	Normalize reduced 2D output data from a given DRM through the Min-Max Scaling method 
-	Weigh variances of centroids

### Semi supervised learning
Labeling approach of svm as base classifier
