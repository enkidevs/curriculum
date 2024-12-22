---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Comparisons](https://numpy.org/doc/stable/reference/routines.logic.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Comparison Operations

---

## Content

Compare arrays using standard operators:

Check if elements are equal:

```python
a = np.array([1, 2, 3])
b = np.array([1, 3, 3])
equal = a == b
# array([True, False, True])
```

> 💡 Comparisons return boolean arrays!

Find greater values:

```python
a = np.array([1, 2, 3])
greater = a > 2
# array([False, False, True])
```

Check multiple conditions:

```python
arr = np.array([1, 2, 3, 4])
between = (arr > 1) & (arr < 4)
# array([False, True, True, False])
```

---

## Practice

What's the result?

```python
a = np.array([1, 2, 3])
result = a <= 2
# ???
```

- `array([True, True, False])`
- `array([True, True, True])`
- `array([False, False, True])`
- `True`

---

## Revision

To check if elements are not equal, use:

```python
a = np.array([1, 2, 3])
b = np.array([1, 1, 1])
result = ???
```

- `a != b`
- `a <> b`
- `a not b`
- `a isnt b`
