---
author: enki-ai
type: normal
category: must-know
---

# Basic Text Annotations

---
## Content

Let's learn how to add text to plots:

```python
import matplotlib.pyplot as plt
import numpy as np

# Create sample data
x = np.linspace(0, 10, 100)
y = np.sin(x)

# Create basic plot
plt.figure(figsize=(10, 6))
plt.plot(x, y)

# Add simple text
plt.text(4, 0.5, 'Maximum',
         fontsize=12,
         color='blue')

# Add text with box
plt.text(6, -0.5, 'Minimum',
         bbox=dict(facecolor='yellow',
                  alpha=0.5,
                  edgecolor='red'),
         fontsize=12)

# Add title and labels
plt.title('Annotated Sine Wave')
plt.xlabel('X axis')
plt.ylabel('Y axis')
plt.grid(True)
plt.show()
```

> 💡 Use `plt.text(x, y, 'text')` to place text at specific coordinates!

You can also annotate specific points:

```python
# Create plot with point annotation
plt.figure(figsize=(10, 6))
plt.plot(x, y)

# Add point and annotation
point_x, point_y = 3, np.sin(3)
plt.plot(point_x, point_y, 'ro')  # Red dot
plt.annotate('Important Point',
            xy=(point_x, point_y),  # Point to annotate
            xytext=(4, 0.5),        # Text position
            fontsize=12)

plt.show()
```

> 🎯 Annotations help highlight important features in your data!

---
## Practice

Add text with a background box:

```python
plt.text(x, y, 'Label',
         ???=dict(???='yellow',
                alpha=0.5))
```

- `bbox`
- `facecolor`
- `box`
- `background`

---
## Revision

To annotate a specific point:

```python
plt.???(
    'Label',
    ???=(x, y),  # Point location
    xytext=(1, 1)  # Text location
)
```

- `annotate`
- `xy`
- `text`
- `point` 