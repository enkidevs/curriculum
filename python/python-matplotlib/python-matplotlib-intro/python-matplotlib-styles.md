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

# Plot Styles and Colors

---
## Content

Matplotlib offers different styles to make your plots look better:

```python
import matplotlib.pyplot as plt

# See available styles
print(plt.style.available)

# Use a specific style
plt.style.use('seaborn-v0_8')

# Create a styled plot
x = [1, 2, 3, 4]
y = [10, 15, 13, 17]
plt.plot(x, y)
plt.show()
```

![output](https://img.enkipro.com/4e2c3a0969efc26b6edef0c17454b976.png)

> 💡 The 'seaborn' style is great for modern, clean-looking plots!

You can also use colors and line styles:

```python
# Different colors and styles
plt.plot(x, y, 'r--')  # Red dashed line
plt.plot(x, y, 'bo-')  # Blue line with dots
plt.plot(x, y, 'g^')   # Green triangles
```

> 🎨 Color codes:
> - 'r': red
> - 'b': blue
> - 'g': green
> - 'k': black

---
## Practice

Create a red line with dots:

```python
plt.plot(x, y, ???)
```

- `'ro-'`
- `'r-'`
- `'o-'`
- `'red'`

---
## Revision

To use the seaborn style:

```python
plt.???.???('seaborn-v0_8-darkgrid')
```

- `style`
- `use`
- `'seaborn'`
- `plot`
- `set`
- `'style'` 