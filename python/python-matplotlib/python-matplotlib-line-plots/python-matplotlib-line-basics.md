---
author: enki-ai
type: normal
category: must-know
---

# Basic Line Plots

---
## Content

Line plots are perfect for showing trends over time:

```python
import matplotlib.pyplot as plt

# Monthly sales data
months = [1, 2, 3, 4, 5]
sales = [100, 120, 140, 180, 200]

plt.plot(months, sales)
plt.title("Monthly Sales")
plt.xlabel("Month")
plt.ylabel("Sales ($)")
plt.show()
```

> 💡 Line plots connect points in order - great for time series data!

You can control the appearance:

```python
# Same data, different style
plt.plot(months, sales,
         color='blue',       # Line color
         linewidth=2,        # Line thickness
         marker='o',         # Add points
         markersize=8)       # Point size
plt.grid(True)              # Add grid
plt.show()
```

> 🎯 Use markers to highlight actual data points!

---
## Practice

Create a line plot showing temperature changes:

```python
hours = [1, 2, 3, 4]
temp = [20, 22, 21, 24]

plt.???(hours, temp)
plt.???(True)  # Add grid
plt.???("Hour")  # X-axis label
plt.show()
```

- `plot`
- `grid`
- `xlabel`
- `line`
- `show`
- `name`

---
## Revision

Which parameter controls line thickness?

```python
plt.plot(x, y, ???=2)
```

- `linewidth`
- `width`
- `size`
- `thickness` 