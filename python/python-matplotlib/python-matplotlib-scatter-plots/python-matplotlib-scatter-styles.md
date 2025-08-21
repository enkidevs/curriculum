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

# Styling Scatter Plots

---
## Content

Let's explore different ways to style scatter plots:

```python
import matplotlib.pyplot as plt

# Age vs. screen time data
ages = [13, 15, 16, 14, 13, 17, 16, 15]
hours = [2, 4, 3, 1, 5, 3, 4, 2]

# Basic colored markers
plt.scatter(ages, hours, 
           marker='o',      # Circle markers
           c='red',         # Red color
           s=100)          # Size 100
plt.title("Age vs. Screen Time")
plt.show()
```

![output](https://img.enkipro.com/f2e8621e579b9b75ad5c5afc029f54b6.png)

> 💡 Different markers help distinguish groups of data!

Common marker styles:
```python
# Different marker types
plt.figure(figsize=(10, 4))

# Plot with different markers
x = [1, 2, 3]
y_circles = [1, 1, 1]
y_triangles = [2, 2, 2]
y_squares = [3, 3, 3]

plt.scatter(x, y_circles, marker='o', label='Circles')
plt.scatter(x, y_triangles, marker='^', label='Triangles')
plt.scatter(x, y_squares, marker='s', label='Squares')

plt.legend()
plt.show()
```

![output](https://img.enkipro.com/33800e9cb188ac1adcfe83cff4c65e43.png)

> 🎨 Available markers:
> - 'o': circles
> - '^': triangles
> - 's': squares
> - '*': stars

---
## Practice

Create a scatter plot with triangle markers:

```python
x = [1, 2, 3]
y = [4, 5, 6]

plt.scatter(x, y, 
           ???='???',
           c='blue')
```

- `marker`
- `^`
- `type`
- `triangle`

---
## Revision

To change marker size in a scatter plot:

```python
plt.scatter(x, y, ???=200)
```

- `s`
- `size`
- `marker`
- `width` 