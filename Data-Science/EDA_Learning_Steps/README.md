# EDA Tutorials

This repo contains step-by-step Jupyter notebooks to practice and learn Exploratory Data Analysis (EDA) from scratch using Python.

---

## Day 1 – Load, Inspect & Univariate Analysis

**Notebook:** `01_load_inspect_univariate_analysis.ipynb`

### What’s covered:
- Loaded Titanic dataset (from Seaborn)
- Explored dataset shape, columns, info, and variable types
- Wrote variable descriptions manually (for clarity)
- Compared similar columns (e.g., `class` vs `pclass`, `who` vs `sex`)
- Decided which columns to keep or drop
- Univariate analysis:
  - Used `countplot` (Seaborn) for categorical/discrete variables
  - Used `histplot` (Seaborn) for numerical/continuous variables
  - Built simple plotting functions
  - Compared value distributions across variables

## Day 2 – Grouping & Outlier Detection

**Notebook:** `02_grouping_outliers_boxplots.ipynb`

### What’s covered:
- Performed basic grouping using `.groupby()` to explore relationships (e.g., survival rate by gender, class)
- Aggregated summary stats with `.mean()`, `.count()`, etc.
- Detected outliers in numerical columns using the IQR (Interquartile Range) method
- Removed or flagged outliers for cleaner analysis
- Visualized distributions and outliers using Seaborn `boxplot`
- Created helper functions for IQR filtering and grouped summaries

## Day 3 – Visualizing Survival Patterns

**Notebook:** `03_visualizing_survival_patterns.ipynb`

### What’s covered:
- Created grouped visualizations to explore relationships between survival and other features
- Used Seaborn’s `catplot` to generate different plot types like bar plots, box plots
- Compared distributions of categorical and numerical features visually
- Plotted heatmaps to examine correlations between numerical variables
- Focused on building intuitive visual narratives for better pattern recognition
- Improved plot styling and layout for clearer communication
- Handling Missing Values:
  - Identified missing values using `.isnull().sum()` and visual inspection
  - Used `.fillna()` to impute missing values where appropriate (e.g., with mean, median, or placeholders)
  - Applied `.dropna()` to remove rows with missing data in certain cases
  - Made decisions based on the context and importance of each feature
  - Ensured that data cleaning steps were modular and reusable within the notebook

### 📊 Visual Tools:
`catplot`, `barplot`, `boxplot`, `heatmap`, `seaborn`, `matplotlib`

## Day 3 – Visualizing Survival Patterns

**Notebook:** `04_Essentail_Concepts_Practice_for_Feature-Engineering.ipynb`

### What’s covered:
- Creating & Modifying Columns
- Filtering Data with Conditions
- Using `np.where()` & `pd.cut()`
- Filling Missing Values
- One-Hot & Label Encoding
- String Handling in Pandas
- Datetime Feature Extraction
- Basic Categorization & Grouping

---

### 🔧 Tools:
`pandas`, `seaborn`, `matplotlib`

---


