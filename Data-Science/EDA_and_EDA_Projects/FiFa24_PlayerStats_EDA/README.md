# FIFA 24 Player Stats — Exploratory Data Analysis

## Overview
This project performs a comprehensive exploratory data analysis on the FIFA 24 
Player Statistics dataset sourced from Kaggle. The dataset contains detailed 
attributes for over 5,000 players including technical skills, physical traits, 
mental attributes, goalkeeper stats, and market values across 41 columns.

## Dataset
- **Source:** Kaggle — FIFA 24 Player Stats
- **Size:** ~5,000 players, 41 features
- **Features:** Player bio, technical skills, defensive metrics, physical 
attributes, mental traits, and goalkeeping stats

## Analysis Structure
1. **Data Exploration** — shape, dtypes, null values, variable descriptions
2. **Univariate Analysis** — distribution of categorical and numerical features
3. **Outlier Detection** — IQR method with boxplot visualization
4. **Data Cleaning & Transformation** — missing value handling, value column 
parsing, accent normalization
5. **Player Profiling** — skill-based groupings across 13 player archetypes 
including Dribblers, Strikers, Elite GKs, Wingers, and Hidden Gems
6. **Correlation Analysis** — heatmap across all numerical attributes
7. **Bivariate Analysis** — categorical vs numerical and numerical vs numerical 
relationships

## Tools & Libraries
- Python, Pandas, NumPy, Matplotlib, Seaborn

## Key Findings
- Spain and Brazil lead in producing the highest-valued U21 talents
- Manchester City holds the highest total squad value at over €427M
- Kylian Mbappe is the most valued player at €153.5M
- Sprint speed and acceleration show the strongest correlation of all attribute pairs
- Goalkeepers consistently appear as outliers in outfield skill distributions — 
confirming they are a fundamentally distinct player type
- Market value peaks between ages 24–28 before declining sharply after 30

## How to Run
1. Clone the repository
2. Install dependencies: `pip install pandas numpy matplotlib seaborn`
3. Open `FiFa24_PlayerStats_EDA.ipynb` in Jupyter Notebook
4. Run all cells