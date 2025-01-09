---
author: enki-ai
type: normal
category: must-know
---

# Basic Legends

---
## Content

Legends help identify different elements in your plot:

```python
import matplotlib.pyplot as plt
import numpy as np

# Create sample data
x = np.linspace(0, 10, 100)
y1 = np.sin(x)
y2 = np.cos(x)

# Plot with labels
plt.plot(x, y1, label='Sine')
plt.plot(x, y2, label='Cosine')

# Add a basic legend
plt.legend()
plt.title('Trigonometric Functions')
plt.grid(True)
plt.show()
```

> 💡 Always use `label` parameter and call `plt.legend()`!

You can control legend position:

```python
# Different legend locations
plt.plot(x, y1, label='Sine')
plt.plot(x, y2, label='Cosine')

plt.legend(loc='upper right')  # Position legend
plt.title('Functions with Legend')

# Common locations:
# 'best'
# 'upper right'
# 'upper left'
# 'lower right'
# 'lower left'
# 'center'
plt.show()
```

> 🎯 Choose a legend location that doesn't overlap with important data!

---
## Practice

Add a legend to the plot:

```python
plt.plot(x, y1, ???='Line 1')
plt.plot(x, y2, ???='Line 2')
plt.???()
```

- `label`
- `label`
- `legend`
- `name`
- `title`
- `show`

---
## Revision

To position a legend in the top-right corner:

```python
plt.legend(???='???')
```

- `loc`
- `upper right`
- `position`
- `top right` 