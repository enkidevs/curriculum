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

# Basic Pandas Operations

---
## Content

Common operations in pandas:

```python
import pandas as pd

df = pd.DataFrame({
    'A': [1, 2, 3],
    'B': [4, 5, 6]
})

# View first rows (by default shows up to 5 rows)
# You can specify number of rows: df.head(n)
print(df.head(2))  # Output:
#    A  B
# 0  1  4 
# 1  2  5

# Get statistical summary of numerical columns
# This includes:
# - count (number of non-null values)
# - mean (average)
# - std (standard deviation) 
# - min (minimum value)
# - 25% (first quartile)
# - 50% (median)
# - 75% (third quartile)
# - max (maximum value)
print(df.describe())  
# Output:
#              A         B
# count  3.0000    3.0000
# mean   2.0000    5.0000
# std    1.0000    1.0000
# min    1.0000    4.0000
# 25%    1.5000    4.5000
# 50%    2.0000    5.0000
# 75%    2.5000    5.5000
# max    3.0000    6.0000


# Get DataFrame information like:
# - Number of rows and columns
# - Column names and data types
# - Memory usage
# - Number of non-null values
print(df.info())  # Output:
# <class 'pandas.core.frame.DataFrame'>
# RangeIndex: 3 entries, 0 to 2
# Data columns (total 2 columns):
#  #   Column  Non-Null Count  Dtype
# ---  ------  --------------  -----
#  0   A       3 non-null      int64
#  1   B       3 non-null      int64
# dtypes: int64(2)
# memory usage: 176.0+ bytes

# Select column
print(df['A'])
# Output:
# 0    1
# 1    2
# 2    3
# Name: A, dtype: int64
```

> 🔑 Key methods:
- `head()`: Preview data
- `info()`: DataFrame info
- `describe()`: Statistical summary
- `['column_name']`: Column selection

---
## Practice

To get statistical information about numerical columns, use:

???

- df.describe()
- df.info()
- df.head()
- df.stats()

---
## Revision

To preview the first few rows of a DataFrame, use:

???

- df.head()
- df.preview()
- df.first()
- df.top() 