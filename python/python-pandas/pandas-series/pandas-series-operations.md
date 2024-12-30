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

# Series Operations

---

## Content

Series make it super easy to analyze and transform your data. Let's track some GitHub stats:

```python
import pandas as pd

# Daily stars gained
stars = pd.Series([10, 15, 12, 8], 
    index=['Mon', 'Tue', 'Wed', 'Thu'])

# Daily issues opened
issues = pd.Series([3, 5, 2, 4],
    index=['Mon', 'Tue', 'Wed', 'Thu'])

# Calculate stars per issue ratio
ratio = stars / issues
print(ratio)
```
```
Mon    3.333333
Tue    3.000000
Wed    6.000000
Thu    2.000000
dtype: float64
```

Need summary stats?
```python
print(f"Total stars: {stars.sum()}")
print(f"Best day: {stars.max()}")
print(f"Average: {stars.mean():.1f}")
```

Filter high-activity days:
```python
busy_days = stars[stars > 10]
print(busy_days)
```

> 💡 Operations automatically handle missing data and index alignment

---

## Practice

Calculate total cost:

```python
qty = pd.Series([2, 3], 
                index=['a', 'b'])
price = pd.Series([10, 20], 
                 index=['a', 'b'])
total = ???
```

- `qty * price`
- `qty + price`
- `qty.multiply(price)`
- `qty.sum(price)`

---

## Revision

Get values greater than 10:

```python
high = series[series ??? ???]
```

- `>`
- `10`
- `gt`
- `>=` 