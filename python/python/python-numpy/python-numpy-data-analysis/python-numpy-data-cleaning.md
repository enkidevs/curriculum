---
author: enki-ai
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Data Cleaning

---

## Content

Clean and validate real-world data:

```python
# Sales data with missing values and outliers
sales = np.array([100, np.nan, 150, 10000, 200, np.nan])

# 1. Handle missing values
# Replace NaN with mean of valid values
mean_sales = np.nanmean(sales)  # Ignores NaN
clean_sales = np.nan_to_num(sales, nan=mean_sales)
print(clean_sales)  # [100, 150, 150, 10000, 200, 150]

# 2. Detect outliers
# Using z-score method (standard deviations from mean)
z_scores = (clean_sales - np.mean(clean_sales)) / np.std(clean_sales)
outliers = np.abs(z_scores) > 2  # More than 2 std devs
print("Outliers at:", np.where(outliers)[0])  # [3]
```

> 💡 Use `np.nan` to represent missing values, not -1 or 0!

Fix data types and ranges:

```python
# Temperature readings with mixed types
temps = np.array(['20.5', '19.8', 'error', '22.1', '25.0'])

# Convert and validate
def clean_temperature(t):
    try:
        return float(t)
    except ValueError:
        return np.nan

clean_temps = np.array([clean_temperature(t) for t in temps])
print(clean_temps)  # [20.5, 19.8, nan, 22.1, 25.0]

# Ensure values in valid range (0-50°C)
valid_mask = (clean_temps >= 0) & (clean_temps <= 50)
valid_temps = clean_temps[valid_mask]
```

> 💡 Always validate data ranges for your specific domain!

---

## Practice

Replace missing values with -1:

```python
data = np.array([1, np.nan, 3])
clean = np.???(data, ???=???)
```

- `nan_to_num`
- `nan`
- `-1`
- `replace`
- `missing`
- `0`

---

## Revision

To convert array to float type:

???

- `arr.astype(np.float64)`
- `arr.tofloat()`
- `np.float(arr)`
- `float(arr)`
