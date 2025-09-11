# Scikit-Learn Practice and Concepts  

This folder contains practice files and exercises to build a strong foundation in **Scikit-Learn**.  

## File 1: Introduction to the ML Workflow  
The first file walks through a basic machine learning workflow: loading a dataset, splitting it into training and testing sets, scaling the data, applying the **K-Nearest Neighbors (KNN)** algorithm, training the model, and generating predictions.  

## File 2: Understanding Datasets in Scikit-Learn  
This file covers the different datasets available in Scikit-Learn (such as Iris, Digits, Wine, Breast Cancer, etc.), how to load them, and the process of splitting data into **X (features)** and **y (target)** for machine learning tasks.  

## File 3: Train and Test Data  
This file focuses on the importance of splitting data into **training** and **testing** sets.  

- **Training data** is used to teach the model patterns and relationships within the dataset.  
- **Testing data** is used to evaluate how well the model performs on unseen data.  
- This step helps prevent **overfitting**, ensures better generalization, and gives a realistic measure of performance.  

We also practiced using the **`train_test_split`** function from Scikit-Learn to achieve this.  

## File 4: Preprocessing with StandardScaler  
This file introduces **data preprocessing**, a crucial step before applying machine learning algorithms.  

- We explored the **StandardScaler**, which standardizes features by removing the mean and scaling them to unit variance.  
- Standardization ensures that all features are on the same scale, which is particularly important for algorithms sensitive to feature magnitudes (such as KNN, SVM, and logistic regression).  
- By applying preprocessing, we improve model performance, stability, and accuracy.  

## File 5: Feature Encoding with OneHotEncoder and OrdinalEncoder  
This file focuses on **encoding categorical variables** to prepare them for machine learning algorithms.  

- We used **OneHotEncoder** to transform non-ordinal categorical features into multiple binary columns.  
- We used **OrdinalEncoder** to assign ordered numeric values to categories with an inherent ranking.  
- Both techniques were practiced using datasets fetched from **OpenML** (Adult and Cars datasets).  
- This step ensures that categorical data can be effectively utilized by ML models, leading to better performance and insights.  

## File 6: Classification Algorithms  
This file introduces **classification** and explores popular algorithms such as **K-Nearest Neighbors (KNN)** and **Logistic Regression**.  

- We learned how to train classification models to predict categories.  
- We evaluated model performance using metrics like accuracy score and confusion matrix.  
- This step helps understand how to choose and apply the right classification algorithm for a given problem.  

## File 7: Clustering with KMeans  
This file introduces **clustering**, an unsupervised machine learning technique that groups similar data points together without predefined labels.  

- We used **make_blobs** from Scikit-Learn to generate synthetic datasets for clustering practice.  
- We applied the **KMeans algorithm**, which assigns data points to clusters based on similarity and iteratively refines the cluster centers.  
- This technique is helpful when we want to discover natural groupings in data, such as customer segmentation, pattern recognition, and anomaly detection.  
- We also visualized the clusters to better understand how KMeans partitions the data.  

## File 8: Dimensionality Reduction with PCA  
This file introduces **Principal Component Analysis (PCA)**, a technique used to reduce the number of features while retaining as much information as possible.  

- We used an **OpenML dataset** and applied PCA to reduce its dimensionality.  
- After dimensionality reduction, we trained a **Logistic Regression** model to measure prediction accuracy.  
- When we decreased the number of principal components to just 10, the model’s accuracy dropped.  
- This happened because fewer components meant losing important variance in the data, resulting in the model having less information to learn from and therefore performing worse.  

## File 9: Model Evaluation with Metrics  
This file explores different **model evaluation metrics** to measure performance beyond just accuracy.  

- We used **precision**, **recall**, **F1-score**, and **ROC-AUC** to better understand model behavior.  
- We also visualized **confusion matrices** to see where models make correct and incorrect predictions.  
- These metrics are crucial for evaluating models, especially when dealing with imbalanced datasets.  

## File 10: Cross-Validation  
This file introduces **cross-validation**, a technique used to get a more reliable estimate of model performance.  

- We used **K-Fold Cross-Validation** to split data into multiple folds and train/test the model on each fold.  
- This helps in reducing bias and variance caused by a single train/test split.  
- Cross-validation ensures a more robust evaluation of the model before deployment.  

## File 11: Hyperparameter Tuning  
This file focuses on **hyperparameter optimization**, which helps improve model performance.  

- We practiced using **GridSearchCV** and **RandomizedSearchCV** to find the best hyperparameters for algorithms like KNN and Logistic Regression.  
- Hyperparameter tuning improves accuracy, reduces overfitting, and ensures we are using the best model configuration possible.  

## File 12: Pipelines  
This file introduces **pipelines**, which streamline the machine learning workflow.  

- We combined **data preprocessing** and **model training** steps into a single pipeline.  
- This makes our code cleaner, reduces chances of data leakage, and ensures consistent transformations during training and testing.  
- Pipelines make experimentation easier and reproducible, which is essential for real-world ML projects.  

---

## Purpose  

The goal of this folder is to practice and understand different Scikit-Learn workflows and algorithms, serving as a reference point for future machine learning projects.  
