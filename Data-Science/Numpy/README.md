🔢 Numpy is the backbone of numerical computing in Python. This folder includes examples to understand array manipulation, mathematical operations, and performance optimization.

# Numpy Quick Revision Notes 🚀

## 🔢 NumPy (Numerical Computing Library)  

### 🔹 1️⃣ Creating Arrays  
📌 `np.array([1, 2, 3, 4])` → 1D array  
📌 `np.array([[1, 2], [3, 4]])` → 2D array  
📌 `np.zeros((3,3))` → 3x3 matrix of zeros  
📌 `np.ones((2,2))` → 2x2 matrix of ones  
📌 `np.arange(0, 10, 2)` → Array from 0 to 10 with step 2  
📌 `np.linspace(0, 10, 5)` → 5 equally spaced points from 0 to 10  

---

### 🔹 2️⃣ Array Operations  
📌 `arr.shape` → Shape of array  
📌 `arr.reshape(2,2)` → Reshape array  
📌 `arr.flatten()` → Flatten 2D to 1D  
📌 `np.concatenate([arr1, arr2])` → Merge arrays  
📌 `np.vstack([arr1, arr2])` → Stack vertically  
📌 `np.hstack([arr1, arr2])` → Stack horizontally  

---

### 🔹 3️⃣ Mathematical Operations  
📌 `np.sum(arr)` → Sum of elements  
📌 `np.mean(arr)` → Mean  
📌 `np.median(arr)` → Median  
📌 `np.std(arr)` → Standard deviation  
📌 `np.max(arr), np.min(arr)` → Max and Min values  
📌 `np.argmax(arr)` → Index of max value  
📌 `np.argmin(arr)` → Index of min value  