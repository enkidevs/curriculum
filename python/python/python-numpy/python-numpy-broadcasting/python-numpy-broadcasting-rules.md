---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Broadcasting Rules](https://numpy.org/doc/stable/user/basics.broadcasting.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Broadcasting Rules

---

## Content

NumPy follows strict rules for broadcasting:

```python
# Rule 1: Arrays must have compatible shapes
# Shape (3,) and (3,) - Compatible
prices = np.array([10, 20, 30])
discounts = np.array([0.1, 0.2, 0.1])
result = prices * discounts  # Works!

# Shape (2,3) and (3,) - Compatible
sales = np.array([[100, 200, 300],
                  [400, 500, 600]])
weights = np.array([0.3, 0.5, 0.2])
result = sales * weights    # Works!

# Shape (2,3) and (4,) - Incompatible!
sales = np.array([[100, 200, 300],
                  [400, 500, 600]])
values = np.array([1, 2, 3, 4])
result = sales + values    # Error!
```

> 💡 Compare array shapes from right to left!

Common broadcasting patterns:

```python
# Pattern 1: Scalar with array
temps = np.array([[20, 25], [30, 35]])
celsius_to_f = temps * 1.8 + 32
# (2,2) with scalar -> Works!

# Pattern 2: Row vector with matrix
data = np.array([[1, 2, 3],
                 [4, 5, 6]])
row = np.array([10, 20, 30])
# (2,3) with (3,) -> Works!

# Pattern 3: Column vector with matrix
col = np.array([[1],
                [2]])
# (2,1) with (2,3) -> Works!
```

> 💡 When in doubt, check shapes with array.shape!

---

## Practice

What's the result?

```python
a = np.array([1, 2, 3])
b = 2
result = a * b
# ???
```

- `[2 4 6]`
- `[1 2 3 2]`
- `Error`
- `2`

---

## Revision

Broadcasting works when:

???

- Shapes are compatible
- Arrays are same size
- Arrays are 1D
- Arrays are 2D
