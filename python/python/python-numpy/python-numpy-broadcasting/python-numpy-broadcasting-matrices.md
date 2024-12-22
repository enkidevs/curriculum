---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Matrix Broadcasting](https://numpy.org/doc/stable/user/basics.broadcasting.html#broadcasting-arrays){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Broadcasting Matrices

---

## Content

Broadcasting with 2D arrays:

Add row vector:

```python
matrix = np.array([[1, 2], [3, 4]])
row = np.array([10, 20])
result = matrix + row
# array([[11, 22],
#        [13, 24]])
```

> 💡 Row vector is broadcast to each row!

Add column vector:

```python
matrix = np.array([[1, 2], [3, 4]])
col = np.array([[10], [20]])
result = matrix + col
# array([[11, 12],
#        [23, 24]])
```

Scale matrix:

```python
matrix = np.array([[1, 2], [3, 4]])
result = matrix * 2
# array([[2, 4],
#        [6, 8]])
```

---

## Practice

What's the result?

```python
m = np.array([[1, 2], [3, 4]])
v = np.array([10, 20])
r = m + v
# ???
```

- `[[11, 22], [13, 24]]`
- `[[11, 12], [23, 24]]`
- `Error`
- `[11, 22]`

---

## Revision

A row vector is broadcast to:

???

- Each row of the matrix
- Each column of the matrix
- The first row only
- The diagonal only
