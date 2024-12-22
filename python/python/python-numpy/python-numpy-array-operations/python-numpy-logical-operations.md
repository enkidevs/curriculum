---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Logical Operations](https://numpy.org/doc/stable/reference/routines.logic.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Logical Operations

---

## Content

NumPy provides logical operations for boolean arrays:

AND operation:

```python
a = np.array([True, True, False])
b = np.array([True, False, False])
result = np.logical_and(a, b)
# array([True, False, False])
```

> 💡 You can also use the `&` operator for AND!

OR operation:

```python
a = np.array([True, False, False])
b = np.array([False, True, False])
result = a | b
# array([True, True, False])
```

NOT operation:

```python
a = np.array([True, False, True])
result = ~a
# array([False, True, False])
```

---

## Practice

Complete the code to perform an OR operation:

```python
x = np.array([True, False])
y = np.array([False, True])
result = x ??? y
```

- `|`
- `&`
- `or`
- `and`

---

## Revision

To negate all values in a boolean array, use:

???

- `~array`
- `-array`
- `!array`
- `not array`
