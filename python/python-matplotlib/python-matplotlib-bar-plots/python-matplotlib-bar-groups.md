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

# Grouped Bar Plots

---
## Content

When comparing multiple categories across groups:

```python
import matplotlib.pyplot as plt
import numpy as np

# Sales data for two quarters
products = ['Laptop', 'Phone', 'Tablet']
q1_sales = [100, 80, 40]
q2_sales = [110, 85, 45]

# Calculate bar positions
x = np.arange(len(products))
width = 0.35  # Width of bars

# Create grouped bars
plt.bar(x - width/2, q1_sales, width, label='Q1')
plt.bar(x + width/2, q2_sales, width, label='Q2')

# Customize plot
plt.xticks(x, products)
plt.xlabel('Products')
plt.ylabel('Sales')
plt.title('Quarterly Sales Comparison')
plt.legend()
plt.show()
```

> 💡 Offset each group's position using width/2!

You can also stack bars:

```python
# Stacked bars
plt.bar(products, q1_sales, label='Q1')
plt.bar(products, q2_sales, bottom=q1_sales, label='Q2')
plt.legend()
plt.show()
```

> 🎯 Use `bottom` parameter to stack bars on top of each other!

---
## Practice

Create grouped bars for morning and evening temperatures:

```python
days = ['Mon', 'Tue', 'Wed']
morning = [15, 14, 16]
evening = [20, 19, 21]

x = np.arange(len(days))
width = 0.35

plt.bar(x - ???, morning, width)
plt.bar(x + ???, evening, width)
plt.???(x, days)  # Set x-axis labels
```

- `width/2`
- `width/2`
- `xticks`
- `width`
- `pos`
- `labels`

---
## Revision

To create stacked bars, use:

```python
plt.bar(x, data1)
plt.bar(x, data2, ???=data1)
```

- `bottom`
- `top`
- `stack`
- `on` 