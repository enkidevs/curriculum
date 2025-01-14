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

# Custom Plot Styling

---
## Content

You can customize individual plot elements:

```python
import matplotlib.pyplot as plt
import numpy as np

# Create data
x = np.linspace(0, 10, 100)
y = np.sin(x)

# Custom styling
plt.figure(figsize=(10, 6))
plt.plot(x, y, 
         color='#2ecc71',     # Hex color code
         linewidth=2.5,       # Line thickness
         linestyle='--',      # Dashed line
         alpha=0.8)          # Transparency

# Customize axes and labels
plt.title('Custom Styled Plot', 
         fontsize=16,        # Text size
         pad=15)            # Title spacing

plt.xlabel('X Axis', fontsize=12)
plt.ylabel('Y Axis', fontsize=12)

# Custom grid
plt.grid(True, 
         linestyle=':',      # Dotted lines
         color='gray',       # Grid color
         alpha=0.3)         # Grid transparency

plt.show()
```

> 💡 Use hex color codes (#RRGGBB) for precise colors!

You can also set default styles:

```python
# Set custom defaults
plt.rcParams.update({
    'font.family': 'sans-serif',
    'font.size': 12,
    'axes.titlesize': 14,
    'axes.labelsize': 12,
    'xtick.labelsize': 10,
    'ytick.labelsize': 10,
    'lines.linewidth': 2,
    'grid.alpha': 0.3
})

# All subsequent plots use these settings
plt.plot(x, y)
plt.title('Using Custom Defaults')
plt.show()
```

> 🎯 Set defaults for consistent styling across all plots!

---
## Practice

Set a custom font size for all plots:

```python
plt.???.update({
    '???.size': 12
})
```

- `rcParams`
- `font`
- `params`
- `text`

---
## Revision

To set a custom hex color for a line:

```python
plt.plot(x, y, ???='#2ecc71')
```

- `color`
- `c`
- `hex`
- `style` 