---
author: enki-ai
type: normal
category: must-know
---

# Subplot Layouts

---
## Content

Let's explore different subplot arrangements:

```python
import matplotlib.pyplot as plt
import numpy as np

# Create sample data
x = np.linspace(0, 5, 50)
y1 = x**2
y2 = np.sin(x)
y3 = np.exp(-x)

# Create 2x2 subplot grid
plt.figure(figsize=(10, 8))

# Top left
plt.subplot(2, 2, 1)
plt.plot(x, y1)
plt.title('Square Function')

# Top right
plt.subplot(2, 2, 2)
plt.plot(x, y2)
plt.title('Sine Function')

# Bottom, spanning both columns
plt.subplot(2, 2, (3, 4))  # Span positions 3 and 4
plt.plot(x, y3)
plt.title('Exponential Decay')

plt.tight_layout()
plt.show()
```

> 💡 Use tuples in position to span multiple subplot spaces!

You can also create uneven layouts:

```python
# Create grid with different sized plots
fig = plt.figure(figsize=(12, 6))

# Large plot on left
ax1 = plt.subplot2grid((2, 3), (0, 0), rowspan=2, colspan=2)
ax1.plot(x, y1)
ax1.set_title('Main Plot')

# Two smaller plots on right
ax2 = plt.subplot2grid((2, 3), (0, 2))
ax2.plot(x, y2)

ax3 = plt.subplot2grid((2, 3), (1, 2))
ax3.plot(x, y3)

plt.tight_layout()
plt.show()
```

> 🎯 Use `subplot2grid` for more complex layouts!

---
## Practice

Create a 2x1 subplot with the second plot twice as tall:

```python
plt.figure(figsize=(8, 8))

plt.subplot2grid((3, 1), (0, 0), ???=1)
plt.plot(x1, y1)

plt.subplot2grid((3, 1), (1, 0), ???=2)
plt.plot(x2, y2)
```

- `rowspan`
- `rowspan`
- `colspan`
- `height`

---
## Revision

To create a subplot spanning multiple positions, use:

```python
plt.subplot(2, 2, ???)
```

- `(3, 4)`
- `3, 4`
- `[3, 4]`
- `3:4` 