---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Trigonometric Functions](https://numpy.org/doc/stable/reference/routines.math.html#trigonometric-functions){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Trigonometric Angles and Distances

---

## Content

Calculate angles and distances:

```python
# Robot arm angles (in degrees)
angles = np.array([0, 45, 90, 180])

# Convert to radians for calculations
rad = np.deg2rad(angles)
# array([0., 0.785, 1.571, 3.142])

# Calculate horizontal position (cosine)
x_pos = 5 * np.cos(rad)  # arm length = 5
# array([5., 3.536, 0., -5.])

# Calculate vertical position (sine)
y_pos = 5 * np.sin(rad)
# array([0., 3.536, 5., 0.])
```

> 💡 Always convert degrees to radians for NumPy trig functions!

---

## Practice

Convert degrees to radians:

```python
degrees = np.array([180])
rad = np.???(degrees)
```

- `deg2rad`
- `degrees2radians`
- `to_radians`
- `rad`

---

## Revision

Convert the following 2D array to radians:

```python
arr = np.array([[0, 90], [180, 270]])
result = np.???(arr)
```

- `deg2rad`
- `radians`
- `rad`
- `radians`