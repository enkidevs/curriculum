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

# Basic Math Operations

---

## Content

NumPy provides many mathematical functions:

Square root:

```python
arr = np.array([4, 9, 16])
roots = np.sqrt(arr)
# array([2., 3., 4.])
```

> 💡 Math functions work on each element automatically!

Power:

```python
arr = np.array([1, 2, 3])
squared = np.power(arr, 2)
# array([1, 4, 9])
```

Absolute value:

```python
arr = np.array([-1, 2, -3])
absolute = np.abs(arr)
# array([1, 2, 3])
```

---

## Practice

Calculate the square root:

```python
arr = np.array([16, 25, 36])
result = np.???(arr)
# array([4., 5., 6.])
```

- `sqrt`
- `root`
- `square`
- `pow`

---

## Revision

To calculate powers, use:

???

- `np.power(arr, 2)`
- `arr.power(2)`
- `np.pow(2, arr)`
- `arr ** 2`
