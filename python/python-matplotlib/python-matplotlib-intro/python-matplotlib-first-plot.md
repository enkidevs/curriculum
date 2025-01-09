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

# Your First Plot

---
## Content

Let's create your first data visualization with matplotlib:

```python
import matplotlib.pyplot as plt

# Monthly coffee sales
months = [1, 2, 3, 4, 5]
sales = [100, 120, 140, 180, 200]

plt.plot(months, sales)
plt.show()
```

> 💡 The `plot()` function creates a line plot - perfect for showing trends over time!

Let's make it more informative:

```python
plt.plot(months, sales)
plt.title("Coffee Shop Sales")
plt.xlabel("Month")
plt.ylabel("Sales ($)")
plt.show()
```

You can customize the line style:

```python
# 'o' adds points, 'r' makes it red
plt.plot(months, sales, 'ro-')
plt.title("Coffee Shop Sales")
plt.show()
```

> 🎨 Different markers show your data in different ways:
> - 'o': circles
> - 's': squares
> - '^': triangles

---
## Practice

Create a plot showing website visitors over time:

```python
days = [1, 2, 3, 4]
visitors = [50, 80, 100, 70]

plt.???(days, visitors)
plt.???(???)
plt.show()
```

- `plot`
- `title`
- `"Website Traffic"`
- `graph`
- `name`
- `"Plot"`

---
## Revision

To add points to your line plot, use:

```python
plt.plot(x, y, ???)
```

- `'o-'`
- `'points'`
- `'dots'`
- `'line'` 