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

# Data Visualization Prep

---

## Content

Prepare data for visualization:

```python
# Sales data over time
months = np.arange(12)  # 0 to 11
sales = np.array([
    [100, 120, 140, 160, 180, 200, 190, 185, 195, 210, 230, 240],  # Product A
    [50, 55, 65, 75, 80, 85, 82, 80, 85, 90, 95, 100]             # Product B
])

# 1. Normalize for percentage plots
max_sales = sales.max(axis=1, keepdims=True)  # Keep dims for broadcasting
normalized = sales / max_sales * 100

# 2. Calculate moving average (smoothing)
window = 3
weights = np.ones(window) / window
smoothed = np.array([
    np.convolve(row, weights, mode='valid') 
    for row in sales
])
```

> 💡 Normalize data to compare series with different scales!

Create visualization grids:

```python
# Generate 2D coordinate grid for contour plots
x = np.linspace(-5, 5, 100)
y = np.linspace(-5, 5, 100)
X, Y = np.meshgrid(x, y)

# Create sample 2D data (e.g., temperature map)
distance = np.sqrt(X**2 + Y**2)
temperature = np.exp(-0.1 * distance)

# Reshape for heatmap
readings = np.random.normal(20, 5, (24, 7))  # 24 hours × 7 days
daily_avg = readings.mean(axis=1)  # Average by hour
weekly_pattern = readings.mean(axis=0)  # Average by day
```

> 💡 Use meshgrid for 2D plots and reshape for heatmaps!

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
