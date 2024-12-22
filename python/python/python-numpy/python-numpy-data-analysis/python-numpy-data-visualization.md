---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Data Visualization](https://numpy.org/doc/stable/reference/routines.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Data Visualization Prep

---

## Content

Prepare data for visualization:

Create grid data:

```python
# Generate 2D coordinate grid
x = np.linspace(-5, 5, 100)
y = np.linspace(-5, 5, 100)
X, Y = np.meshgrid(x, y)
```

> 💡 meshgrid creates coordinates for 2D plotting!

Reshape for heatmaps:

```python
# Convert to 2D array
data = np.array([1, 2, 3, 4, 5, 6])
grid = data.reshape(2, 3)  # 2x3 grid
```

Normalize data:

```python
# Scale to 0-1 range
min_val = data.min()
max_val = data.max()
normalized = (data - min_val) / (max_val - min_val)
```

---

## Practice

Create coordinate grid:

```python
x = np.linspace(0, 1, 10)
X, Y = np.???(x, x)
```

- `meshgrid`
- `grid`
- `coordinates`
- `mesh`

---

## Revision

To normalize data to 0-1 range:

```python
norm = (data - data.???) / (data.??? - data.???)
```

- `min()`
- `max()`
- `min()`
- `mean()`
