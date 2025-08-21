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

# Line Styles and Markers

---
## Content

Let's explore different ways to style your lines:

```python
import matplotlib.pyplot as plt

# Sample data
x = [1, 2, 3, 4]
y = [10, 15, 13, 17]

# Different line styles
plt.plot(x, y, 'r--')  # Red dashed line
plt.title("Dashed Line")
plt.show()
```

![output](https://img.enkipro.com/22ff1d9f6e8afa72d20d6731aa298ec5.png)

> 💡 Combine color, marker, and line style in one string: 'color marker line'

Common style options:
```python
# Line styles
plt.plot(x, y, '-')   # Solid line
plt.plot(x, y, '--')  # Dashed line
plt.plot(x, y, ':')   # Dotted line
plt.plot(x, y, '-.')  # Dash-dot line

# Markers
plt.plot(x, y, 'o')   # Circles
plt.plot(x, y, 's')   # Squares
plt.plot(x, y, '^')   # Triangles
```

> 🎨 Choose styles that match your data:
> - Solid lines for actual data
> - Dashed lines for predictions
> - Markers for important points

---
## Practice

Create a blue dotted line with square markers:

```python
plt.plot(x, y, ???)
```

- `'bs:'`
- `'b:s'`
- `'s:b'`
- `'blue-square'`

---
## Revision

Which style creates a dash-dot line?

???

- `'-.'`
- `'--'`
- `':'`
- `'-'` 