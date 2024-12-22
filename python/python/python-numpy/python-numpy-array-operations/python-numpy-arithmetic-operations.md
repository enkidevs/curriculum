---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Operations](https://numpy.org/doc/stable/reference/routines.math.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Arithmetic Operations

---

## Content

NumPy makes math operations simple and fast:

Add arrays together:

```python
a = np.array([1, 2, 3])
b = np.array([4, 5, 6])
sum = a + b
# array([5, 7, 9])
```

> 💡 Operations work element by element!

Multiply by a number:

```python
arr = np.array([1, 2, 3])
doubled = arr * 2
# array([2, 4, 6])
```

Divide arrays:

```python
a = np.array([10, 20, 30])
b = np.array([2, 5, 6])
result = a / b
# array([5., 4., 5.])
```

---

## Practice

Calculate the result:

```python
a = np.array([2, 4, 6])
b = np.array([1, 2, 3])
result = a - b
# ???
```

- `array([1, 2, 3])`
- `array([3, 6, 9])`
- `array([2, 4, 6])`
- `array([1, 4, 9])`

---

## Revision

To multiply each element by 3, use:

```python
arr = np.array([1, 2, 3])
result = ???
```

- `arr * 3`
- `arr.multiply(3)`
- `3 * (arr)`
- `arr.times(3)`
