# FIFA24 Player Stats — Exploratory Data Analysis (EDA)

## About the Dataset

This project focuses on performing Exploratory Data Analysis (EDA) on a FIFA24 Player Stats dataset. The dataset contains performance and physical statistics for football players from various clubs and countries. The goal is to break down the data to understand player roles, traits, and potential insights using structured, step-by-step analysis.

The dataset includes:
- 41 columns (features) covering player bio, physical attributes, technical skills, mental characteristics, and goalkeeping metrics.
- Players from various countries and clubs with their market values.
- Skill-based ratings across both outfield and goalkeeper positions.

---

## 1. Dataset Info

In this initial phase of EDA, the focus was to understand the structure and basic contents of the dataset.

### Tasks Completed:

- Imported libraries and loaded the dataset using `pd.read_csv()` with the correct encoding (`ISO-8859-1`) to handle special characters
- Used `.head()`, `.columns`, `.shape`, and `.dtypes` to get a general overview
- Checked for missing/null values across all columns and calculated null percentage (e.g., `marking` has all NaNs)
- Used `.info()` and `.describe()` to understand datatype distribution and statistical summaries
- Created a detailed **variable description section**, organizing all 41 columns into logical groups:
  - Basic info
  - Technical/offensive skills
  - Defensive metrics
  - Physical attributes
  - Mental traits
  - Goalkeeping metrics
- Separated columns into:
  - **Numerical features** — values that can be analyzed mathematically
  - **Categorical features** — player names, clubs, countries, etc.

This foundational step sets up the rest of the analysis by ensuring clarity and structure in understanding the data.

## 2. Univariate Analysis

The goal of univariate analysis is to explore the distribution and characteristics of individual variables in the dataset. This helps us understand how each feature behaves independently before we move on to multivariate relationships.

### Categorical Features

We analyzed key categorical variables such as:

- Player
- Country
- Club

To avoid overcrowded or unreadable plots, only the top 20 most frequent categories were visualized using bar plots. This allowed us to maintain clarity while still gaining insight into distribution patterns. 

Examples of insights:
- England had the highest number of players in the dataset, followed by Germany and Spain.
- A few player names appeared multiple times, likely due to transfers or duplicate records.

### Numerical Features

Given the high number of numerical features in the dataset, we focused on a selected group of 6–7 meaningful variables that best represent player performance, physical traits, and market value. These included:

- Age
- Height
- Market Value
- Ball Control
- Sprint Speed
- Strength
- Goalkeeper Reflexes

Histograms were plotted to observe distributions and spot potential outliers. Most features showed logical patterns (e.g., most players being between 20–28 years old, market value being highly skewed, etc.).

Remaining numerical columns were explored briefly but excluded from visual plots to keep the analysis focused and informative.

### Handling Outliers

- Started by using describe() to understand the distribution and spot any obvious irregularities in numerical features.
- Applied the IQR method to identify and filter out high outliers, visualized them for better clarity, and selectively dropped extreme ones.
- Observed that dropping too many outliers shifts the threshold and brings new rows into the outlier range—so we kept some, realizing that not all outliers are necessarily bad, especially in large datasets (~5K rows).



> **Note:** This is an exploratory stage. Data cleaning, handling of missing values, and transformations will be addressed in the next phase.

---
