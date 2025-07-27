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

## 3. Handling Outliers

- Started by using describe() to understand the distribution and spot any obvious irregularities in numerical features.
- Applied the IQR method to identify and filter out high outliers, visualized them for better clarity, and selectively dropped extreme ones.
- Observed that dropping too many outliers shifts the threshold and brings new rows into the outlier range—so we kept some, realizing that not all outliers are necessarily bad, especially in large datasets (~5K rows).

## 4. Data Cleaning, Transformation & Grouping

- Cleaned and standardized player demographic data including country, club value, and individual market value  
- Categorized players into skill-based groups: Technical, Defensive, Attacking, and Goalkeeping  
- Structured physical profiles for key archetypes like Dominant CBs, Explosive Wingers, and Set-Piece Experts  
- Identified high-potential emerging talents and well-rounded hidden gems  
- Applied grouping and filtering techniques to surface top performers in each role  
- Prepared the dataset for deeper visual and statistical analysis in the next phase

## Day 5. Visualization of Grouped and Sorted Data (FIFA24)

- Visualized the groups of player stats using `matplotlib`.  
- used **subplots** to compare skill attributes (like Dribbling, Ball Control, etc.) across players using both **bar plots** and **line plots**.  
- Visualized physical and value-based attributes with clean, individual **bar plots** per player.  
- Techniques like axis labeling, gridlines, and custom subplot layouts helped us keep the visuals clean and informative.

## 6. Correlation  

- Correlated the numerical columns in the FIFA24 dataset!  
- Visualized the relationships using a heatmap

## 7. Bivariate Analysis

### categorical vs numerical variables
- Top 10 countries producing young talent  
- Top 10 highest valued clubs  
- Top 10 highest paid players  
- Top 10 players with the most strength  
- Top 10 players with the highest finishing rate  
- Top 10 oldest players  

### Numerical Vs Numerical

- height -- weight  
- age -- value  
- dribbling -- ball control  
- vision -- short pass  
- sprint speed -- acceleration  
- heading -- jumping  

*Note: We didn’t plot all 42 columns, only a few for practice purposes.*





> **Note:** This is an exploratory stage. Data cleaning, handling of missing values, and transformations will be addressed in the next phase.

---
