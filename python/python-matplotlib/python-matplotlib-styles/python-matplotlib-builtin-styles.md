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

# Built-in Style Sheets

---
## Content

Matplotlib comes with several built-in styles:

```python
import matplotlib.pyplot as plt
import numpy as np

# Create sample data
x = np.linspace(0, 10, 50)
y1 = np.sin(x)
y2 = np.cos(x)

# Compare different styles
styles = ['seaborn', 'ggplot', 'classic', 'dark_background']

plt.figure(figsize=(12, 8))
for i, style in enumerate(styles, 1):
    plt.subplot(2, 2, i)
    with plt.style.context(style):
        plt.plot(x, y1, label='sin')
        plt.plot(x, y2, label='cos')
        plt.title(f'Style: {style}')
        plt.legend()
plt.tight_layout()
plt.show()
```

![output](https://img.enkipro.com/ab4b61f84929473d15e56073d2468328.png)

> 💡 Each style has its own color palette and design elements!

Popular built-in styles:
```python
# Professional presentations
plt.style.use('seaborn')  # Clean, modern look

# Web/blog posts
plt.style.use('fivethirtyeight')  # Bold, trendy style

# Academic papers
plt.style.use('classic')  # Traditional matplotlib

# Dark theme
plt.style.use('dark_background')  # Light on dark
```

> 🎯 Choose styles that match your audience and medium!

---
## Practice

Which style is best for academic publications?

???

- `classic`
- `seaborn`
- `ggplot`
- `fivethirtyeight`

---
## Revision

For a modern, clean look, use the ??? style.

- `seaborn`
- `classic`
- `default`
- `basic` 