---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Advanced Math](https://numpy.org/doc/stable/reference/routines.math.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Advanced Math Operations

---

## Content

NumPy includes advanced math functions:

Exponential (e^x):

```python
arr = np.array([0, 1, 2])
exp = np.exp(arr)
# array([1., 2.71828, 7.38906])
```

> 💡 NumPy uses high-precision calculations!

Natural logarithm:

```python
arr = np.array([1, 2, 4])
log = np.log(arr)
# array([0., 0.69315, 1.38629])
```

Sum of array:

```python
arr = np.array([[1, 2], [3, 4]])
total = np.sum(arr)        # 10
row_sum = np.sum(arr, 0)   # [4, 6]
col_sum = np.sum(arr, 1)   # [3, 7]
```

---

## Practice

Calculate the exponential:

```python
arr = np.array([0, 1])
result = np.???(arr)
# array([1., 2.71828])
```

- `exp`
- `exponential`
- `power`
- `e`

---

## Revision

To sum columns in a 2D array:

```python
arr = np.array([[1, 2], [3, 4]])
result = np.sum(arr, ???)
```

- `0`
- `1`
- `2`
- `axis=0`
