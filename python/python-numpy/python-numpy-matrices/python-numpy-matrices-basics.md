---
author: enki-ai
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Matrix Basics

---

## Content

Create and manipulate matrices:

```python
# Create matrices
A = np.array([[1, 2, 3],
              [4, 5, 6],
              [7, 8, 9]])

# Matrix properties
print(f"Shape: {A.shape}")       # (3, 3)
print(f"Size: {A.size}")         # 9
print(f"Dimensions: {A.ndim}")   # 2

# Special matrices
identity = np.eye(3)             # 3x3 identity matrix
zeros = np.zeros((3, 4))         # 3x4 zero matrix
ones = np.ones((2, 3))           # 2x3 ones matrix
random = np.random.rand(3, 3)    # Random 3x3 matrix
```

> 💡 Matrices are 2D arrays with special mathematical properties!

Matrix indexing:

```python
# Access elements
element = A[1, 2]      # Row 1, Column 2
row = A[0, :]          # First row
column = A[:, 1]       # Second column
submatrix = A[0:2, 1:] # First 2 rows, columns 1 onwards

# Modify elements
A[0, 0] = 10           # Set single element
A[:, 0] = [11, 12, 13] # Set first column
```

> 💡 Use slicing for efficient matrix operations!

---

## Practice

Create a 3x3 identity matrix:

```python
I = np.???(???)
```

- `eye`
- `3`
- `identity`
- `ones`
- `zeros`
- `2`

---

## Revision

To get the first column of matrix A:

```python
column = A[???, ???]
```

- `:`
- `0`
- `1`
- `all`
- `None`