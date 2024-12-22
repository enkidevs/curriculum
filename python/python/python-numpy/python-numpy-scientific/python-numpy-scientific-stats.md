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

# Scientific Statistics

---

## Content

Perform statistical analysis:

Basic statistics:

```python
# Sample data
data = np.array([1.2, 2.3, 3.1, 4.2, 5.0])
mean = np.mean(data)
std = np.std(data)
var = np.var(data)
```

> 💡 Use ddof=1 for sample standard deviation!

Percentiles:

```python
# Find percentiles
median = np.percentile(data, 50)  # 50th percentile
q1 = np.percentile(data, 25)      # First quartile
q3 = np.percentile(data, 75)      # Third quartile
```

Correlation:

```python
# Correlation between variables
x = np.array([1, 2, 3, 4, 5])
y = np.array([2, 4, 5, 4, 5])
correlation = np.corrcoef(x, y)[0, 1]
```

---

## Practice

Calculate sample standard deviation:

```python
std = np.std(data, ddof=???)
```

- `1`
- `0`
- `2`
- `None`

---

## Revision

To find the median value:

???

- `np.percentile(data, 50)`
- `np.median(data)`
- `np.middle(data)`
- `np.average(data)`
