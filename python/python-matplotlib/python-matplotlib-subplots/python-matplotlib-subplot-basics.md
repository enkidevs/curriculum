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

# Basic Subplots

---
## Content

Subplots let you combine multiple plots in one figure:

```python
import matplotlib.pyplot as plt
import numpy as np

# Create some data
x = np.linspace(0, 10, 100)
sin_y = np.sin(x)
cos_y = np.cos(x)

# Create a figure with 2 subplots
plt.figure(figsize=(10, 4))  # Width: 10, Height: 4

# First subplot: sin(x)
plt.subplot(1, 2, 1)  # 1 row, 2 cols, plot 1
plt.plot(x, sin_y)
plt.title('Sine Wave')
plt.grid(True)

# Second subplot: cos(x)
plt.subplot(1, 2, 2)  # 1 row, 2 cols, plot 2
plt.plot(x, cos_y)
plt.title('Cosine Wave')
plt.grid(True)

plt.tight_layout()  # Adjust spacing
plt.show()
```

> 💡 `subplot(rows, cols, position)` defines the layout and location!

You can also use the object-oriented interface:

```python
# Create subplots with the object interface
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

ax1.plot(x, sin_y)
ax1.set_title('Sine Wave')
ax1.grid(True)

ax2.plot(x, cos_y)
ax2.set_title('Cosine Wave')
ax2.grid(True)

plt.show()
```

> 🎯 The object interface gives you more control over each subplot!

---
## Practice

Create two side-by-side plots:

```python
plt.figure(figsize=(8, 3))

plt.???(1, 2, ???)  # Left plot
plt.plot(x1, y1)

plt.???(1, 2, ???)  # Right plot
plt.plot(x2, y2)
```

- `subplot`
- `1`
- `subplot`
- `2`
- `plot`
- `3`

---
## Revision

In `subplot(a, b, c)`, what do the parameters mean?

???

- `a=rows, b=columns, c=position`
- `a=columns, b=rows, c=position`
- `a=position, b=rows, c=columns`
- `a=width, b=height, c=position` 