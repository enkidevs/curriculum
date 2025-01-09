---
author: enki-ai
type: normal
category: must-know
---

# The Matplotlib Interface

---
## Content

Let's explore how matplotlib works:

```python
import matplotlib.pyplot as plt

# Create some data
x = [1, 2, 3, 4]
y = [10, 15, 13, 17]

# Basic plotting
plt.plot(x, y)
plt.show()
```

> 💡 Always use `plt.show()` to display your plot!

Matplotlib has two main ways to create plots:

```python
# Method 1: Simple state-based interface
plt.plot(x, y)
plt.title("My Plot")
plt.show()

# Method 2: Object-oriented interface
fig, ax = plt.subplots()
ax.plot(x, y)
ax.set_title("My Plot")
plt.show()
```

> 🎨 The object-oriented interface gives you more control over your plots!

---
## Practice

Complete the code to create a basic plot:

```python
import matplotlib.pyplot as ???

x = [1, 2, 3]
y = [4, 5, 6]

plt.???(x, y)
plt.???()
```

- `pyplot`
- `plot`
- `show`
- `matplotlib`
- `draw`
- `display`

---
## Revision

Which interface gives you more control over your plots?

???

- `Object-oriented (fig, ax = plt.subplots())`
- `State-based (plt.plot())`
- `Both are the same`
- `Neither` 