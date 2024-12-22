---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Statistics](https://numpy.org/doc/stable/reference/routines.statistics.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Data Aggregation

---

## Content

Aggregate and summarize data:

Basic statistics:

```python
# Common aggregations
data = np.array([[1, 2, 3],
                 [4, 5, 6]])
print(data.sum())     # Total sum
print(data.mean(0))   # Column means
print(data.max(1))    # Row maximums
```

> 💡 Axis 0 is columns, axis 1 is rows!

Custom aggregations:

```python
# Apply function along axis
def range_stat(x):
    return np.max(x) - np.min(x)
ranges = np.apply_along_axis(range_stat, 0, data)
```

Running statistics:

```python
# Cumulative calculations
cumsum = np.cumsum(data)    # Cumulative sum
cumprod = np.cumprod(data)  # Cumulative product
```

---

## Practice

Calculate column means:

```python
means = data.???(???)
```

- `mean`
- `0`
- `average`
- `1`

---

## Revision

For row-wise operations, use axis:

???

- `1`
- `0`
- `row`
- `x`
