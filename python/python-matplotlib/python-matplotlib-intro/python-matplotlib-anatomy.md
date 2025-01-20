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

# Anatomy of a Plot

---
## Content

Every matplotlib plot has key components:

```python
import matplotlib.pyplot as plt

# Create a basic plot
plt.plot([1, 2, 3], [4, 5, 6])

# Add components
plt.title("Sales Data")   # Title
plt.xlabel("Month")       # X-axis label
plt.ylabel("Revenue ($)") # Y-axis label
plt.grid(True)            # Grid lines
plt.show()
```

![output](https://img.enkipro.com/6d126e13714fca43750b757261a81089.png)

> 💡 Every visual element in matplotlib has its own method - from `plt.title()` for titles to `plt.grid()` for gridlines!

Here's where everything goes:

```python
# Full plot with all components
plt.figure(figsize=(8, 6))  # Canvas size
plt.plot([1, 2, 3], [4, 5, 6], 'ro-')  # Data
plt.title("My First Plot")
plt.xlabel("X values")
plt.ylabel("Y values")
plt.grid(True)
plt.show()
```

> 🎯 Each component helps tell your data's story!

---
## Practice

Match the component with its purpose:

```python
plt.???(figsize=(8, 6)) # Set plot size
plt.???(True)           # Add reference lines
plt.???("Time")         # Name the x-axis
```

- `figure`
- `grid`
- `xlabel`
- `xaxis`
- `canvas`
- `lines`
- `name`

---
## Revision

The main components of a plot are:

???

- `Title, axes labels, data, and grid`
- `Only the data points`
- `Just the title and data`
- `Grid lines only` 