---
author: enki-ai
type: normal
category: tip
links:
  - >-
    [Rounding Functions](https://numpy.org/doc/stable/reference/routines.math.html#rounding){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Rounding Methods

---

## Content

Here's a summary of the different rounding methods:

```python
# Sales targets (in thousands)
targets = np.array([12.6, 15.2, 18.8, 20.1])

# Round down (floor)
min_targets = np.floor(targets)
# array([12., 15., 18., 20.])

# Round up (ceiling)
max_targets = np.ceil(targets)
# array([13., 16., 19., 21.])

# Round to nearest thousand
nearest = np.round(targets)
# array([13., 15., 19., 20.])
```

> 💡 `round` uses "round half to even" rule for .5 values!