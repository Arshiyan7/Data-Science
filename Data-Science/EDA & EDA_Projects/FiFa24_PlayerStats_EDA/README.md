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

---

## Upcoming:  
- **2. Univariate Analysis** — Deep dive into individual features  
- **3. Bivariate Analysis** — Finding relationships between variables  
- **4. Visualizations & Insights** — Player profiling, top attributes, value vs skill, etc.

Stay tuned!
