---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Mathematical Constants](https://numpy.org/doc/stable/reference/constants.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Scientific Constants

---

## Content

Access mathematical and physical constants:

Mathematical constants:

```python
# Common mathematical constants
print(np.pi)      # π (3.141592...)
print(np.e)       # e (2.718281...)
print(np.inf)     # Infinity
print(np.nan)     # Not a Number
```

> 💡 These constants are high-precision floating-point values!

Physical constants:

```python
# Import physical constants
from numpy import euler_gamma  # Euler's constant
from numpy import golden      # Golden ratio

print(euler_gamma)  # ≈ 0.5772156649...
print(golden)      # ≈ 1.6180339887...
```

Use in calculations:

```python
# Circle calculations
radius = np.array([1, 2, 3])
area = np.pi * radius**2
circumference = 2 * np.pi * radius
```

---

## Practice

Calculate circle area:

```python
r = np.array([1, 2])
area = ??? * r???
```

- `np.pi`
- `**2`
- `pi`
- `^2`

---

## Revision

The mathematical constant e is accessed using:

???

- `np.e`
- `np.E`
- `np.exp(1)`
- `np.euler`
