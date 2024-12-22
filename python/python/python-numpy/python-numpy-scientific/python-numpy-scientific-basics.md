---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Scientific Computing](https://numpy.org/doc/stable/reference/routines.math.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Scientific Computing Basics

---

## Content

Use NumPy for scientific calculations:

Physical constants:

```python
# Gravitational acceleration (m/s²)
g = 9.81
height = np.array([1, 2, 3])  # meters
time = np.sqrt(2 * height / g)
```

> 💡 NumPy functions preserve units in calculations!

Vector operations:

```python
# Force vectors (N)
F1 = np.array([1, 0, 0])  # 1N in x direction
F2 = np.array([0, 1, 0])  # 1N in y direction
resultant = np.sqrt(np.sum(F1**2 + F2**2))
```

Unit conversion:

```python
# Convert temperature
celsius = np.array([0, 100])
fahrenheit = (celsius * 9/5) + 32
```

---

## Practice

Calculate kinetic energy (E = ½mv²):

```python
mass = 2  # kg
velocity = np.array([1, 2, 3])  # m/s
energy = ??? * mass * velocity???
```

- `0.5`
- `**2`
- `1/2`
- `^2`

---

## Revision

To find the magnitude of a vector:

???

- `np.sqrt(np.sum(v**2))`
- `np.abs(v)`
- `np.magnitude(v)`
- `v.length()`
