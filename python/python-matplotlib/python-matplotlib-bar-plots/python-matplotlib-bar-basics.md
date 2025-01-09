---
author: enki-ai
type: normal
category: must-know
---

# Basic Bar Plots

---
## Content

Bar plots are perfect for comparing categories:

```python
import matplotlib.pyplot as plt

# Sales by product
products = ['Laptop', 'Phone', 'Tablet', 'Watch']
sales = [100, 80, 40, 30]

plt.bar(products, sales)
plt.title("Product Sales")
plt.xlabel("Product")
plt.ylabel("Units Sold")
plt.show()
```

> 💡 Bar plots make it easy to compare values across categories!

You can customize the bars:

```python
plt.bar(products, sales,
        color='skyblue',     # Bar color
        width=0.6,           # Bar width
        align='center',      # Alignment
        alpha=0.7)           # Transparency

plt.grid(True, axis='y')     # Add horizontal grid
plt.show()
```

> 🎯 Use colors and grids to make your bars stand out!

---
## Practice

Create a bar plot showing monthly expenses:

```python
months = ['Jan', 'Feb', 'Mar']
expenses = [500, 450, 480]

plt.???(months, expenses)
plt.???('Monthly Expenses')
plt.show()
```

- `bar`
- `title`
- `plot`
- `name`

---
## Revision

To change bar width, use:

```python
plt.bar(x, y, ???=0.8)
```

- `width`
- `size`
- `barwidth`
- `w` 