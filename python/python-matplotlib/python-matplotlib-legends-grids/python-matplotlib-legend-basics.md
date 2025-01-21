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

![output](https://img.enkipro.com/f9545c22e0b2cdffd621d05438e38a9e.png)

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

![output](https://img.enkipro.com/463a3682c2780c5aa08c1e13b820f229.png)

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