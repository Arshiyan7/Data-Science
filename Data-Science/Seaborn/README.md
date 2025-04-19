Seaborn is a statistical data visualization library built on Matplotlib. It simplifies the creation of informative and aesthetically pleasing charts, making it easier to analyze relationships, distributions, and categorical data. 
# Seaborn Quick Revision Notes 🚀

## Dataset Handling

```python
import seaborn as sns
```

- `sns.get_dataset_names()` → Lists available built-in datasets in Seaborn.
- `sns.load_dataset(name)` → Loads a dataset from Seaborn’s repository.

---

## Distribution & Density Plots

### Histogram & KDE
```python
sns.distplot(data)  # Deprecated
sns.displot(data)   # Use this instead
```
- **Best for:** Checking normality, skewness, or spread of data.
- **Most used:** `displot()` (newer version, `distplot()` is deprecated).
- **Tip:** Use `bins=` to control the number of bars in the histogram.

🔍 **Pro Tip:** Press `Shift + Tab` inside brackets to see parameters.

---

## Relationship & Pairwise Plots

### Joint Plot
```python
sns.jointplot(x, y, data, kind='scatter')
```
- **Best for:** Visualizing relationships & marginal distributions.
- **Commonly used types:** `kind='scatter'`, `'kde'`, `'hex'`.

### Pair Plot
```python
sns.pairplot(data)
```
- **Best for:** Quick EDA (Exploratory Data Analysis).
- **Mostly used in:** Initial dataset exploration.

### Rug Plot
```python
sns.rugplot(x, data)
```
- **Best for:** Seeing raw data distribution along one axis.

---

## Styling & Aesthetics

### Background Style
```python
sns.set_style('whitegrid')
```
- **Options:** `whitegrid`, `darkgrid`, `white`, `dark`, `ticks`.

### Context Adjustments
```python
sns.set_context('talk')
```
- **Options:** `paper`, `notebook`, `talk`, `poster`.

### Remove Borders/Spines
```python
sns.despine()
```

---

## Categorical Data Visualization

### Count Plot
```python
sns.countplot(x, data)
```
- **Best for:** Checking class imbalances.
- ✅ Highly preferred for categorical analysis.

### Box Plot
```python
sns.boxplot(x, y, data)
```
- **Best for:** Identifying outliers and distribution spread.
- ✅ Most commonly used for comparing distributions.

### Violin Plot
```python
sns.violinplot(x, y, data)
```
- **Best for:** Understanding full data distribution, especially with large data.

### Strip Plot
```python
sns.stripplot(x, y, data, jitter=True)
```
- **Best for:** Visualizing raw data points in categories.
- ✅ Often combined with boxplot for better insights.

### Swarm Plot
```python
sns.swarmplot(x, y, data)
```
- **Best for:** Showing distribution while preserving density.

---

## Color Customization

```python
sns.color_palette('coolwarm')
```
- **Options:** `deep`, `muted`, `bright`, `dark`, `coolwarm`, etc.

---

## Heatmaps 🔥

```python
sns.heatmap(data, annot=True, cmap='coolwarm', linewidths=0.5)
```
- ✅ **Best for:** Visualizing correlations, feature relationships, missing values.
- 🎨 **Common options:**
  - `annot=True` → Shows numerical values inside cells.
  - `cmap='coolwarm'` → Changes the color theme (Options: `viridis`, `Blues`, `magma`, etc.).
  - `linewidths=0.5` → Adds gridlines for better separation.