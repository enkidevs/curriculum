---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [isna()](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.isna.html){documentation}
  - >-
    [value_counts()](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.Series.value_counts.html){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Common Methods

---

## Content

Here are some essential DataFrame methods:

```python
import pandas as pd

df = pd.DataFrame({
    'A': [1, 2, 3],
    'B': [4, 5, 6]
})

# Value counts
print(df['A'].value_counts())
# Output:
# A
# 1    1
# 2    1
# 3    1
# Name: count, dtype: int64

# Check for missing values
print(df.isna().sum())
# Output:
# A    0
# B    0
# dtype: int64

# Drop duplicates
df.drop_duplicates()
```

> 📝 These methods are some of the foundational tools for data exploration!

---

## Practice

To count the number of values in a column `E`, use:

???

- df['E'].value_counts()
- df['E'].values()
- df['E'].vals()
- df['E'].count_values()

---

## Revision

To check for missing values in a DataFrame, use:

???

- df.isna().sum()
- df.isnull()
- df.isna()
- df.missing()
- df.null_count()