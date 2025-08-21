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

# Customizing Bar Plots

---
## Content

Let's make bar plots more informative and visually appealing:

```python
import matplotlib.pyplot as plt

# Monthly revenue data
months = ['Jan', 'Feb', 'Mar', 'Apr']
revenue = [150, 180, 160, 200]

# Create bars with custom style
plt.bar(months, revenue,
        color='lightblue',     # Bar color
        edgecolor='navy',      # Border color
        linewidth=2,           # Border width
        alpha=0.7)             # Transparency

# Add value labels on top of bars
for i, v in enumerate(revenue):
    plt.text(i, v + 2, str(v),
             ha='center')      # Horizontal alignment

plt.title('Monthly Revenue')
plt.show()
```

![output](https://img.enkipro.com/cb50670d524545895d6dd0e4c795e70b.png)

> 💡 Adding value labels helps readers see exact numbers!

You can also use different colors for each bar:

```python
# Color bars based on values
colors = ['green' if x >= 170 else 'red' for x in revenue]
plt.bar(months, revenue, color=colors)

# Add a horizontal target line
plt.axhline(y=170, color='gray', linestyle='--', 
           label='Target')
plt.legend()
plt.show()
```

![output](https://img.enkipro.com/1f868b0123e7501a42dcddee903cf47e.png)

> 🎯 Use colors to highlight important data points!

---
## Practice

Add value labels above bars:

```python
values = [10, 20, 30]
plt.bar(['A', 'B', 'C'], values)

for i, v in ???(values):
    plt.???(i, v + 1, str(v),
           ???='center')
```

- `enumerate`
- `text`
- `ha`
- `count`
- `label`
- `align`

---
## Revision

To add a horizontal line to your plot, use:

```python
plt.???(y=100, color='red', ???='--')
```

- `axhline`
- `linestyle`
- `hline`
- `style` 