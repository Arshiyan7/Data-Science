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

### More to cover soon...
---

> All plots were generated using reusable functions, and brief insights were written for each feature to solidify learning.
