# Titanic - Kaggle Competition

This repository contains my work for the Titanic Kaggle competition.  
The challenge is to build a machine learning model that predicts whether a passenger survived the Titanic disaster based on features such as age, gender, ticket class, and more.

## Steps Covered

- **Dataset Information**  
  Explored the dataset to understand the available features, checked basic statistics, and reviewed column distributions.

- **Exploratory Data Analysis (EDA)**  
  Plotted key columns such as `Sex`, `Pclass`, and `Survived` to visualize relationships between passenger attributes and survival rates.

- **Data Preprocessing**  
  - Handled missing values by filling or removing null entries where necessary.  
  - Encoded categorical variables such as `Sex` and `Embarked` for use in machine learning models.

- **Modeling**  
  - Split the data into training and testing sets.  
  - Built and evaluated two models:
    - **Logistic Regression**: A simple yet powerful classification algorithm that models the probability of survival as a logistic function.
    - **Random Forest Classifier**: An ensemble learning method that builds multiple decision trees and combines their outputs for a more robust prediction.
  - Calculated accuracy scores and evaluated both models on the test set.
