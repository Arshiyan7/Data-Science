# 📅 EDA Practice – Day 1: Penguin Dataset (Seaborn in-built dataset)

After a short break, I'm back and resuming my data science journey with the **Penguins Dataset** as a hands-on EDA project.

---

## Dataset Info
- Loaded and explored the dataset using `.info()`, `.describe()`, `.head()`
- Identified data types, missing values, and initial structure
- Noted presence of `NaN` in columns like `sex`, and some other columns and some numerical features

---

## Univariate Analysis

### Numerical Features
- Used `sns.histplot()` to visualize distributions
- Analyzed shape (symmetric/skewed), central values, and possible outliers
- Covered: `bill_length_mm`, `bill_depth_mm`, `flipper_length_mm`, `body_mass_g`

###  Categorical Features
- Used `sns.countplot()` with color palettes for clarity
- Identified dominant classes, balance between categories, and missing values
- Covered: `species`, `island`, `sex`

---

## Outlier Detection (Boxplots)
- Plotted boxplots for all numerical columns individually
- Checked distributions for visible outliers
- Used IQR method to calculate thresholds
- **No statistical outliers** were found in the dataset

---

## Grouped Analysis
- Grouped `body_mass_g` by `island` and `species` to observe weight trends
- Found **Gentoo (Biscoe)** to be heaviest (~5076g)
- Adelie was consistent across all islands (~3700g)
- Chinstrap (Dream) had slightly lower min value (2700g)
- Mean ≈ Median across groups → no major outliers
- Insight: **Species impacts body mass more than island location**

---

## Bivariate Analysis & Missing Value Handling

### Missing Values  
- Handled missing data using `fillna()` and mode imputation  
- Chose techniques based on feature type and distribution  

### Numerical vs Numerical  
- Used `sns.scatterplot()` and `sns.pairplot()`  
- Explored trends and correlations between numeric features  

### Categorical vs Numerical  
- Used `sns.boxplot()`, `sns.violinplot()`, `sns.countplot()`, `sns.barplot()`  
- Compared distributions across categories and identified key patterns  

---

> All plots were generated using reusable functions, and brief insights were written for each feature to solidify learning.
