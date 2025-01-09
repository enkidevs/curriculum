---
author: enki-ai
type: normal
category: must-know
---

# Sharing Axes Between Subplots

---
## Content

Sometimes you want subplots to share axes for better comparison:

```python
import matplotlib.pyplot as plt
import numpy as np

# Create sample data
x = np.linspace(0, 10, 100)
y1 = np.sin(x)
y2 = np.sin(x + np.pi/4)  # Phase shifted sine

# Create subplots sharing x-axis
fig, (ax1, ax2) = plt.subplots(2, 1, 
                              sharex=True,  # Share x-axis
                              figsize=(8, 6))

# First plot
ax1.plot(x, y1)
ax1.set_title('Original Signal')
ax1.grid(True)

# Second plot
ax2.plot(x, y2, 'r')
ax2.set_title('Shifted Signal')
ax2.grid(True)

plt.tight_layout()
plt.show()
```

> 💡 `sharex=True` removes redundant x-axis labels!

You can also share y-axes:

```python
# Create subplots sharing both axes
fig, ((ax1, ax2), (ax3, ax4)) = plt.subplots(2, 2,
                                            sharex=True,
                                            sharey=True)

# Plot different functions
ax1.plot(x, np.sin(x))
ax2.plot(x, np.cos(x))
ax3.plot(x, -np.sin(x))
ax4.plot(x, -np.cos(x))

# Add titles
for ax, title in zip([ax1, ax2, ax3, ax4], 
                    ['sin', 'cos', '-sin', '-cos']):
    ax.set_title(title)
    ax.grid(True)

plt.show()
```

> 🎯 Sharing axes helps compare data on the same scale!

---
## Practice

Create two vertically stacked plots sharing the x-axis:

```python
fig, (ax1, ax2) = plt.subplots(2, 1,
                              ???=True,
                              figsize=(8, 6))
ax1.plot(x, y1)
ax2.plot(x, y2)
```

- `sharex`
- `share_x`
- `shareaxis`
- `same_x`

---
## Revision

To share both x and y axes between subplots, use:

```python
plt.subplots(2, 2, ???=True, ???=True)
```

- `sharex`
- `sharey`
- `share_x`
- `share_y` 