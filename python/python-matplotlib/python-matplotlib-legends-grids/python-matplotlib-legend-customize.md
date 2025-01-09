---
author: enki-ai
type: normal
category: must-know
---

# Customizing Legends

---
## Content

Let's explore advanced legend features:

```python
import matplotlib.pyplot as plt
import numpy as np

# Create data
x = np.linspace(0, 5, 100)
y1 = np.exp(x/5)
y2 = x**2

# Plot with custom legend
plt.plot(x, y1, 'r--', linewidth=2, label='Exponential')
plt.plot(x, y2, 'b-', linewidth=2, label='Quadratic')

# Customize legend
plt.legend(
    loc='upper left',          # Position
    bbox_to_anchor=(1.05, 1),  # Outside plot
    frameon=True,              # Show frame
    shadow=True,               # Add shadow
    facecolor='white',         # Background color
    edgecolor='gray',          # Border color
    title='Functions'          # Legend title
)

plt.tight_layout()  # Adjust layout for legend
plt.show()
```

> 💡 Use `bbox_to_anchor` to place legend outside the plot!

You can also create multiple legends:

```python
# Create two groups of plots
line1, = plt.plot(x, y1, 'r--', label='Group 1')
line2, = plt.plot(x, y2, 'b-', label='Group 1')
line3, = plt.plot(x, -y1, 'g:', label='Group 2')

# Create two legends
legend1 = plt.legend([line1, line2], ['Exp', 'Quad'], 
                    loc='upper left', title='First Group')
plt.gca().add_artist(legend1)  # Keep first legend

plt.legend([line3], ['Neg Exp'], 
          loc='lower right', title='Second Group')
plt.show()
```

> 🎯 Multiple legends help organize complex plots!

---
## Practice

Create a legend outside the plot:

```python
plt.plot(x, y, label='Data')
plt.legend(
    ???=(1.1, 1),  # Outside right
    ???='center left'
)
```

- `bbox_to_anchor`
- `loc`
- `position`
- `anchor`

---
## Revision

To add a title to a legend:

```python
plt.legend(
    ???='Legend Title',
    loc='best'
)
```

- `title`
- `name`
- `label`
- `header` 