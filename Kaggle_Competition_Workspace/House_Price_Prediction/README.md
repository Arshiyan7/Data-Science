# House Prices Prediction Project

## Project Overview

This project focuses on predicting **house sale prices** using various property features from the Kaggle dataset **"House Prices – Advanced Regression Techniques"**.  
The goal was to explore, clean, and process the data, then train multiple machine learning models to identify which one best predicts housing prices.

---

## Objectives

- Perform **data exploration** and **preprocessing**
- Handle **missing values** and **encode categorical features**
- **Standardize** numerical data for consistent model performance
- Train and **compare multiple regression models**
- Generate **final predictions** and create a **Kaggle submission file**

---

## Dataset

The dataset includes two main files:

- **train.csv** – Contains house features and the target variable `SalePrice`
- **test.csv** – Contains house features (without `SalePrice`) for final prediction

Each entry represents a residential property with attributes such as:

- Lot size and area  
- Year built and remodeling year  
- Overall quality and condition  
- Basement, garage, and room information  

---

## Data Preprocessing Steps

### 1. Data Cleaning
- Identified missing values and replaced or removed them appropriately  
- Verified data integrity using null value checks to ensure no missing records remained  

### 2. Encoding Categorical Data
- Converted categorical text columns into numeric form using **Label Encoding** and **One-Hot Encoding**, depending on the feature type  

### 3. Feature Scaling
- Applied **StandardScaler** to normalize numerical features and ensure consistent model performance  

### 4. Train-Test Split
- Split the data into **training** and **testing** sets for fair model evaluation  

---

## Models Used

### 1. Linear Regression
- Served as the **baseline model**  
- Provided a good understanding of the data but struggled with complex, non-linear relationships  

### 2. Random Forest Regressor
- Captured **non-linear relationships** effectively  
- Improved accuracy compared to the baseline model  

### 3. XGBoost Regressor
- Offered the **best balance** between bias and variance  
- Delivered the **highest accuracy** and **lowest error** among all tested models  
- Selected as the **final model for submission**

---

## Evaluation Metrics

Since this is a regression problem, models were evaluated using **regression metrics**, not classification ones:

- **R² Score** – Measures how well the model explains data variability  
- **RMSE (Root Mean Squared Error)** – Measures the average magnitude of prediction errors  

---

## Final Predictions

- The final **XGBoost Regressor** model was used to predict prices on the **test dataset**  
- Predictions were compiled into a **CSV file** (with corresponding house IDs) for Kaggle submission  

**Final Model:** `XGBoost Regressor`  
**Kaggle Public Score:** `0.15431`

The model demonstrated good generalization but left room for improvement through more advanced feature engineering and hyperparameter tuning.

---

## Lessons Learned

- Proper **data preprocessing** is crucial for accurate predictions  
- Handling **categorical variables** and **missing data** carefully improves model stability  
- **Feature scaling** ensures consistent model performance  
- Regression tasks require metrics like **R²** and **RMSE**, not accuracy  
- Kaggle’s evaluation metric must **align with the model’s output format**  

---

## Future Improvements

- Apply deeper **feature engineering**, including log transformations and polynomial features  
- Use **hyperparameter tuning** (e.g., GridSearchCV, Optuna)  
- Explore additional models like **LightGBM** and **CatBoost**  
- Implement **cross-validation** for more reliable evaluation  

---

## Tools and Libraries

- **Python**
- **Pandas** and **NumPy** – Data manipulation and analysis  
- **Scikit-learn** – Preprocessing and model building  
- **XGBoost** – High-performance gradient boosting  
- **Matplotlib** and **Seaborn** – Data visualization  

---

## Summary

This project covered the **end-to-end machine learning workflow** — from raw data analysis and cleaning to model training, evaluation, and submission.  

It provided hands-on experience with:
- Handling real-world datasets  
- Building predictive models  
- Understanding how preprocessing affects performance  

The process reinforced the importance of **consistency, precision, and critical analysis** throughout every stage of a data science project.

---
