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

# Advanced Scatter Customization

---
## Content

Let's make scatter plots more informative with colors and sizes:

```python
import matplotlib.pyplot as plt
import numpy as np

# Student data: hours studied, score, stress level
hours = [2, 3, 1, 4, 2, 3, 5]
scores = [65, 75, 55, 85, 60, 72, 95]
stress = [3, 4, 2, 5, 3, 4, 5]  # 1-5 scale

# Color points by stress level
plt.scatter(hours, scores,
           c=stress,           # Color based on stress
           cmap='RdYlGn_r',    # Red-Yellow-Green (reversed)
           s=100)              # Fixed size

plt.colorbar(label='Stress Level')
plt.show()
```

> 💡 Use colormaps to show a third variable in your data!

You can also vary point sizes:

```python
# Size points by importance
importance = np.array(stress) * 100  # Scale up for visibility

plt.scatter(hours, scores,
           s=importance,     # Size by importance
           alpha=0.6,        # Some transparency
           c='blue')         # Fixed color
plt.show()
```

> 🎯 Combine colors and sizes to show even more information!

---
## Practice

Create a scatter plot with points colored by temperature:

```python
x = [1, 2, 3, 4]
y = [10, 20, 15, 25]
temp = [20, 25, 22, 30]

plt.scatter(x, y,
           ???=temp,
           ???='plasma')
plt.???(label='Temperature')
```

- `c`
- `cmap`
- `colorbar`
- `color`
- `map`
- `legend`

---
## Revision

Which parameter adds a color scale to your plot?

???

- `cmap`
- `color`
- `c`
- `scale` 