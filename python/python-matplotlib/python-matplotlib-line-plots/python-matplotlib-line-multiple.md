---
author: enki-ai
type: normal
category: must-know
---

# Multiple Lines

---
## Content

Often you'll want to compare multiple sets of data:

```python
import matplotlib.pyplot as plt

# Two products' sales data
months = [1, 2, 3, 4]
product1 = [100, 120, 115, 130]
product2 = [90, 95, 105, 120]

# Plot both lines
plt.plot(months, product1, 'b-', label='Product 1')
plt.plot(months, product2, 'r--', label='Product 2')

plt.title("Sales Comparison")
plt.xlabel("Month")
plt.ylabel("Sales ($)")
plt.legend()  # Show labels
plt.show()
```

> 💡 Always use different styles for multiple lines to make them distinguishable!

You can also plot calculated values:

```python
# Calculate and plot total sales
total = [p1 + p2 for p1, p2 in zip(product1, product2)]
plt.plot(months, total, 'g^-', label='Total')
plt.legend()
plt.show()
```

> 🎯 Use legends to explain what each line represents!

---
## Practice

Plot two temperature series:

```python
days = [1, 2, 3]
temp1 = [20, 21, 22]
temp2 = [18, 19, 20]

plt.plot(days, temp1, 'r-', ???='City 1')
plt.plot(days, temp2, 'b-', ???='City 2')
plt.???()
plt.show()
```

- `label`
- `label`
- `legend`
- `name`
- `title`
- `show`

---
## Revision

To show line labels in the plot, you need:

???

- `Add label parameter and call plt.legend()`
- `Just add label parameter`
- `Just call plt.legend()`
- `Add name parameter` 