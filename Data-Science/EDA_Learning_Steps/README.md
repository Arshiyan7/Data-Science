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


### 🔧 Tools:
`pandas`, `seaborn`, `matplotlib`

---


