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

# Series Methods

---

## Content

Common methods for Series analysis:

```python
import pandas as pd

s = pd.Series([10, 20, 15, 30, 25])

# Basic statistics
print(s.mean())    # 20.0
print(s.max())     # 30
print(s.min())     # 10

# Value counts
fruits = pd.Series(['apple', 'banana', 'apple', 'orange'])
print(fruits.value_counts())
```
```
apple     2
banana    1
orange    1
dtype: int64
```

> 💡 Use `describe()` for a quick statistical summary:
```python
print(s.describe())
```
```
count     5.00
mean     20.00
std       7.91
min      10.00
25%      15.00
50%      20.00
75%      25.00
max      30.00
dtype: float64
```

---

## Practice

To get the average value of a Series:

```python
s = pd.Series([1, 2, 3])
avg = s.???()
```

- `mean`
- `average`
- `median`
- `sum`

---

## Revision

To count unique values in a Series:

```python
s = pd.Series(['a', 'b', 'a'])
counts = s.???()
```

- `value_counts`
- `count`
- `unique_counts`
- `counts` 