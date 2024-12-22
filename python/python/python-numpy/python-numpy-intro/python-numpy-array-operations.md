---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Operations](https://numpy.org/doc/stable/user/basics.ops.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Basic Array Operations

---

## Content

NumPy makes math operations super easy!

Add all elements:

```python
numbers = np.array([1, 2, 3])
total = numbers.sum()
# 6
```

> 💡 NumPy operations work on the entire array at once!

Multiply each element by 2:

```python
numbers = np.array([1, 2, 3])
doubled = numbers * 2
# array([2, 4, 6])
```

Find the average:

```python
numbers = np.array([2, 4, 6])
mean = numbers.mean()
# 4.0
```

---

## Practice

What's the output of this code?

```python
arr = np.array([1, 2, 3])
result = arr + 5
# ???
```

- `array([6, 7, 8])`
- `[6, 7, 8]`
- `15`
- `array([5, 5, 5])`

---

## Revision

To find the average of an array, use:

???

- `array.mean()`
- `array.average()`
- `array.sum()`
- `array.med()`
