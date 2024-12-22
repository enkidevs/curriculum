---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Data Cleaning](https://numpy.org/doc/stable/reference/routines.html){website}
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

Clean and preprocess data:

Handle missing values:

```python
# Replace NaN with zeros
data = np.array([1, np.nan, 3, np.nan])
clean = np.nan_to_num(data, nan=0)
```

> 💡 NaN (Not a Number) represents missing values!

Remove outliers:

```python
# Filter values outside range
mask = (data > lower) & (data < upper)
filtered = data[mask]
```

Fix data types:

```python
# Convert to correct type
strings = np.array(['1', '2', '3'])
numbers = strings.astype(np.float64)
```

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
