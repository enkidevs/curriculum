---
author: enki-ai
type: normal
category: must-know
---

# Grid Customization

---
## Content

Grids help read values and compare data points:

```python
import matplotlib.pyplot as plt
import numpy as np

# Create sample data
x = np.linspace(0, 10, 100)
y = np.sin(x) * np.exp(-x/5)

# Basic plot with default grid
plt.plot(x, y)
plt.grid(True)  # Add default grid
plt.title('Basic Grid')
plt.show()

# Customize grid style
plt.figure()
plt.plot(x, y)
plt.grid(True,
        linestyle='--',     # Dashed lines
        color='gray',       # Gray color
        alpha=0.5,         # 50% transparency
        linewidth=0.5)     # Thin lines
plt.title('Custom Grid')
plt.show()
```

> 💡 Subtle grids help guide the eye without distracting!

You can also control which axes show grid lines:

```python
# Different grids for x and y axes
plt.figure()
plt.plot(x, y)

plt.grid(True, axis='x',  # Only x-axis grid
         linestyle=':',   # Dotted lines
         color='blue',
         alpha=0.3)

plt.grid(True, axis='y',  # Only y-axis grid
         linestyle='-',   # Solid lines
         color='red',
         alpha=0.3)

plt.title('Different X and Y Grids')
plt.show()
```

> 🎯 Use different grid styles to emphasize important scales!

---
## Practice

Add a custom grid to the plot:

```python
plt.plot(x, y)
plt.grid(True,
         ???='--',    # Dashed
         ???='gray',  # Color
         ???=0.3)     # Transparency
```

- `linestyle`
- `color`
- `alpha`
- `style`
- `shade`
- `opacity`

---
## Revision

To show grid lines only on the x-axis:

```python
plt.grid(True, ???='x')
```

- `axis`
- `grid`
- `show`
- `lines` 