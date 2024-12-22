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

NumPy has all common trig functions:

Sine function:

```python
angles = np.array([0, 30, 90])
# Convert to radians first
radians = np.deg2rad(angles)
sin = np.sin(radians)
# array([0., 0.5, 1.])
```

> 💡 NumPy trig functions expect radians, not degrees!

Cosine function:

```python
angles = np.array([0, 60, 90])
radians = np.deg2rad(angles)
cos = np.cos(radians)
# array([1., 0.5, 0.])
```

Tangent function:

```python
angles = np.array([0, 45])
radians = np.deg2rad(angles)
tan = np.tan(radians)
# array([0., 1.])
```

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
