---
author: enki-ai
type: normal
category: must-know
---

# Customizing Histograms

---
## Content

Let's explore advanced histogram features:

```python
import matplotlib.pyplot as plt
import numpy as np

# Generate two sets of data
data = np.random.normal(100, 15, 200)

# Create normalized histogram
plt.hist(data,
         bins=30,
         density=True,      # Normalize to show probability
         color='lightblue',
         edgecolor='black',
         alpha=0.7,
         label='Distribution')

# Add mean line
plt.axvline(np.mean(data), 
           color='red',
           linestyle='--',
           label='Mean')

plt.title("Value Distribution")
plt.legend()
plt.show()
```

> 💡 Use `density=True` to show proportions instead of counts!

You can also customize bin edges:

```python
# Custom bin edges
custom_bins = [0, 50, 75, 100, 125, 150]
plt.hist(data, 
         bins=custom_bins,
         rwidth=0.9)        # Relative width of bars

plt.xticks(custom_bins)     # Show all bin edges
plt.show()
```

> 🎯 Custom bins help highlight specific ranges in your data!

---
## Practice

Create a normalized histogram with a mean line:

```python
data = [1, 2, 2, 3, 3, 3, 4, 4, 5]

plt.hist(data, ???=True)
plt.???(np.mean(data), 
      color='red',
      ???='--')
```

- `density`
- `axvline`
- `linestyle`
- `normalized`
- `vline`
- `style`

---
## Revision

To adjust the space between histogram bars:

```python
plt.hist(data, bins=5, ???=0.8)
```

- `rwidth`
- `width`
- `space`
- `gap` 