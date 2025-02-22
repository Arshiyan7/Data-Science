# Pandas Quick Revision Notes 🚀
## 🐼 Pandas (Data Analysis Library)  

### 🔹 1️⃣ Dataset Handling  
📌 `pd.read_csv("file.csv")` → Load CSV file  
📌 `df.head()` → First 5 rows  
📌 `df.info()` → Summary of dataframe  
📌 `df.describe()` → Statistical summary  
📌 `df.shape` → Returns (rows, columns)  
📌 `df.columns` → List of column names  
📌 `df.dtypes` → Data types of columns  
📌 `df.isnull().sum()` → Check missing values  
📌 `df.dropna()` → Drop missing values  
📌 `df.fillna(value)` → Fill missing values  

---

### 🔹 2️⃣ Selecting & Filtering Data  
📌 `df['column']` → Select single column  
📌 `df[['col1', 'col2']]` → Select multiple columns  
📌 `df.loc[row_index]` → Select row by index  
📌 `df.iloc[row_num]` → Select row by position  
📌 `df[df['col'] > value]` → Filter rows based on condition  
📌 `df.sort_values('col', ascending=False)` → Sort by column  

---

### 🔹 3️⃣ Modifying Data  
📌 `df['new_col'] = df['col'] * 2` → Create new column  
📌 `df.rename(columns={'old': 'new'})` → Rename column  
📌 `df.drop(columns=['col'])` → Drop column  
📌 `df.duplicated().sum()` → Find duplicates  
📌 `df.drop_duplicates()` → Remove duplicates  
📌 `df.groupby('col').mean()` → Group by column  
📌 `df.merge(df2, on='col')` → Merge with another dataframe  

---