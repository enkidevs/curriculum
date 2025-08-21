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

# Arrows and Connectors

---
## Content

Let's explore how to add arrows to annotations:

```python
import matplotlib.pyplot as plt
import numpy as np

# Create sample data
x = np.linspace(0, 10, 100)
y = np.sin(x)

plt.figure(figsize=(10, 6))
plt.plot(x, y)

# Add annotation with arrow
plt.annotate('Peak',
            xy=(1.5, 1.0),        # Point to annotate
            xytext=(3, 0.5),      # Text position
            arrowprops=dict(
                facecolor='black',
                shrink=0.05,      # Shorten arrow
                width=2,          # Arrow width
                headwidth=8       # Arrow head width
            ))

plt.title('Sine Wave with Arrow Annotation')
plt.show()
```

![output](https://img.enkipro.com/f9673066fdc2ec562fce027c6fc6b8db.png)

> 💡 Use `arrowprops` to customize arrow appearance!

You can create different arrow styles:

```python
# Multiple arrow styles
plt.figure(figsize=(10, 6))
plt.plot(x, y)

# Curved arrow
plt.annotate('Curved Arrow',
            xy=(4.5, -0.9),
            xytext=(6, -0.3),
            arrowprops=dict(
                facecolor='red',
                connectionstyle='arc3,rad=.2'
            ))

# Fancy arrow
plt.annotate('Fancy Arrow',
            xy=(7.5, 0.9),
            xytext=(6, 0.3),
            arrowprops=dict(
                facecolor='green',
                arrowstyle='fancy'
            ))

plt.show()
```

![output](https://img.enkipro.com/324e5804d6fa7d470aec189ba6e06640.png)

> 🎯 Different arrow styles help emphasize different features!

---
## Practice

Create a basic arrow annotation:

```python
plt.annotate('Label',
            xy=(x, y),
            xytext=(x2, y2),
            ???=dict(
                ???='black',
                ???=0.05
            ))
```

- `arrowprops`
- `facecolor`
- `shrink`
- `arrow`
- `color`
- `size`

---
## Revision

To create a curved arrow, use:

```python
arrowprops=dict(
    ???='arc3',
    ???=0.2
)
```

- `connectionstyle`
- `rad`
- `curve`
- `bend` 