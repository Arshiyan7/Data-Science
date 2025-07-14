# EDA Practice – Day 1: Penguin Dataset (Seaborn in-built dataset)

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

---

## Feature Engineering

- Performed one-hot encoding on **categorical features** like `island` and `species`
- Applied **label encoding** on the `sex` column to handle it numerically
- Created additional **numerical features** to enrich the dataset
- Ensured transformed data is ready for modeling or further analysis

---

## Final Visualizations

We visualized engineered features to observe patterns and potential differences among species and sexes.

### 1. Species-wise Visualizations:
- **Box Plot:** Species vs Bill Ratio
- **Violin Plot:** Species vs Flipper-to-Mass Ratio
- **Count Plot:** Species vs Size Class

### 2. Sex-wise Visualizations:
- **Swarm Plot:** Sex vs Bill Ratio
- **Swarm Plot:** Sex vs Flipper-to-Mass Ratio
- **Count Plot:** Sex vs Size Class

### 3. Correlation & Distribution:
- **Heatmap:** Gender Encoding, Bill Ratio, Flipper-to-Mass Ratio, Size Class
- **Pairplot:** Visualized numeric relationships colored by species

---

## Final Conclusion

The EDA process provided several insights:
- **Species** such as *Gentoo* dominated the large size class, while *Adelie* was mostly in the small class.
- Outliers were more noticeable in certain numerical ratios, often based on sex and species.
- Feature engineering significantly improved data readability and revealed deeper patterns.
- Relationships between features like bill ratio and flipper-to-mass ratio were stronger than expected.

The dataset has now been cleaned, enriched, and exported (`penguins_after_eda.csv`) and is ready for further modeling or dashboarding.

---

## What’s Next?

Next step might involve:
- Modeling with classification techniques
- Practicing EDA on new datasets for broader exposure

> After exploring the dataset through info summaries, univariate and bivariate analysis, feature engineering, and visual insights, we’ve wrapped up our EDA on the Penguin Dataset.

---

