---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Mathematical Functions](https://numpy.org/doc/stable/reference/routines.math.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Scientific Functions

---

## Content

Use specialized scientific functions:

Logarithmic functions:

```python
# Natural log and base-10 log
x = np.array([1, 10, 100])
ln = np.log(x)      # Natural logarithm
log10 = np.log10(x) # Base-10 logarithm
```

> 💡 Log functions help with exponential relationships!

Trigonometric functions:

```python
# Angles in radians
angles = np.array([0, np.pi/4, np.pi/2])
sin_vals = np.sin(angles)
cos_vals = np.cos(angles)
tan_vals = np.tan(angles)
```

Special functions:

```python
# Error function (statistics)
x = np.array([-1, 0, 1])
erf = np.erf(x)  # Error function
gamma = np.gamma(x + 1)  # Gamma function
```

---

## Practice

Calculate the natural log of values:

```python
x = np.array([1, 2.7, 7.4])
result = np.???(x)
```

- `log`
- `ln`
- `log10`
- `logarithm`

---

## Revision

For trigonometric functions, angles must be in:

???

- Radians
- Degrees
- Either
- Gradians
