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

# Trigonometric Functions

---

## Content

We can use trigonometric functions to find the angles and distances of the 2D arrays:

```python
# Points on a plane (x, y)
x = np.array([1, -1, 0])
y = np.array([1, 1, 2])

# Calculate angles from x-axis
angles = np.arctan2(y, x)
# array([0.785, 2.356, 1.571])

# Convert to degrees for display
degrees = np.rad2deg(angles)
# array([45., 135., 90.])
```

> 💡 Use `arctan2(y, x)` to get correct quadrant angles!

---

## Practice

Calculate sine of angles:

```python
angles = np.array([0, 90])
result = np.???(np.deg2rad(angles))
```

- `sin`
- `sine`
- `sin_deg`
- `sine_deg`

---

## Revision

Calculate arctan of angles:

```python
angles = np.array([0, 90])
result = np.???(np.deg2rad(angles))
```

- `arctan2`
- `arctan`
- `arctan_deg`
- `arctan_rad`
