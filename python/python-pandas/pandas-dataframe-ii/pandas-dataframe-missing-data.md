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

# Handling Missing Data

---
## Content

Real-world data is messy. Some users might skip fields, sensors might fail, or data might get corrupted. Here's how to handle missing values:

```python
import pandas as pd
import numpy as np

df = pd.DataFrame({
    'username': ['pythonista', 'js_lover', 'rust_fan'],
    'last_login': ['2024-01-01', None, '2024-01-03'],
    'points': [100, np.nan, 150]
})

# Find where the gaps are
print(df.isna().sum())
```
```
username      0
last_login    1
points        1
dtype: int64
```

Clean it up:
```python
# Remove rows with missing data
clean_df = df.dropna()

# Or fill in the blanks
df['points'] = df['points'].fillna(0)  # Zero points
df['last_login'] = df['last_login'].fillna('Never')  # Never logged in
```

> 💡 Both `None` and `np.nan` are treated as missing values

---
## Practice

Fill missing values with zero:

```python
clean = df.???(???)
```

- `fillna`
- `0`
- `dropna`
- `nan`

---
## Revision

To remove rows with missing values:

```python
df = df.???()
```

- `dropna`
- `drop_null`
- `remove_na`
- `clean` 