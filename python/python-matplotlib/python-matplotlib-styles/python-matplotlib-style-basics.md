---
author: enki-ai
type: normal
category: must-know
---

# Basic Plot Styling

---
## Content

Let's explore matplotlib's style system:

```python
import matplotlib.pyplot as plt
import numpy as np

# See available styles
print(plt.style.available)

# Use a specific style
plt.style.use('seaborn')

# Create sample data
x = np.linspace(0, 10, 100)
y = np.sin(x) * np.exp(-x/5)

# Create styled plot
plt.figure(figsize=(8, 5))
plt.plot(x, y, linewidth=2)
plt.title('Styled Plot')
plt.grid(True)
plt.show()
```

> 💡 Styles affect all plots until changed or reset!

You can also use styles temporarily:

```python
# Temporary style context
with plt.style.context('dark_background'):
    plt.figure(figsize=(8, 5))
    plt.plot(x, y, color='cyan')
    plt.title('Dark Theme Plot')
    plt.show()

# Back to previous style automatically
plt.plot(x, y)  # Uses previous style
plt.show()
```

> 🎯 Use `with plt.style.context()` for one-off styled plots!

---
## Practice

Apply a style to all subsequent plots:

```python
plt.???.???('seaborn')
```

- `style`
- `use`
- `set`
- `apply`

---
## Revision

To temporarily use a style:

```python
with plt.???.???('dark_background'):
    plt.plot(x, y)
```

- `style`
- `context`
- `use`
- `temp` 