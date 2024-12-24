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

Find angles from coordinates:

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

Calculate sine of angles:

```python
angles = np.array([0, 90])
result = np.???(np.deg2rad(angles))
```

- `sin`
- `sine`
- `sin_deg`
- `sine_deg`
