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

# Advanced Annotations

---
## Content

Let's explore more complex annotation features:

```python
import matplotlib.pyplot as plt
import numpy as np

# Create data
x = np.linspace(0, 10, 100)
y = np.sin(x)

plt.figure(figsize=(12, 6))
plt.plot(x, y)

# Add text box with multiple lines
plt.text(1, 0.5, 'Key Features:\n' + 
                 '• Periodic\n' + 
                 '• Amplitude = 1\n' + 
                 '• Period = 2π',
         bbox=dict(facecolor='white',
                  edgecolor='blue',
                  boxstyle='round,pad=0.5'),
         fontsize=10)

# Add rotated text
plt.text(5, -0.5, 'Rotated Label',
         rotation=45,
         fontsize=12)

plt.title('Advanced Text Annotations')
plt.show()
```

> 💡 Use `\n` for multi-line text and `rotation` for angled text!

You can also create custom annotation styles:

```python
# Custom annotation styles
plt.figure(figsize=(10, 6))
plt.plot(x, y)

# Annotation with custom box
plt.annotate('Important Region',
            xy=(3, 0),
            xytext=(4, 0.5),
            bbox=dict(boxstyle='round,pad=0.5',
                     fc='yellow',
                     alpha=0.5),
            arrowprops=dict(
                arrowstyle='->',
                connectionstyle='arc3,rad=-0.2',
                color='red',
                lw=2
            ))

# Add mathematical expression
plt.text(7, 0.5, r'$\sin(x)=\frac{e^{ix}-e^{-ix}}{2i}$',
         fontsize=14)

plt.show()
```

> 🎯 Use LaTeX formatting with `r'$formula$'` for mathematical expressions!

---
## Practice

Add a multi-line text box:

```python
plt.text(x, y, ???,
         bbox=dict(???='round',
                  ???='white'))
```

- `'Line 1\nLine 2'`
- `boxstyle`
- `facecolor`
- `'Line 1/Line 2'`
- `style`
- `color`

---
## Revision

To add a mathematical expression:

```python
plt.text(x, y, ???'$\sqrt{x^2}$')
```

- `r`
- `math`
- `latex`
- `f` 