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

In NumPy, you can access elements of a matrix using indexing. 

```python
A = np.array([[1, 2, 3],
              [4, 5, 6],
              [7, 8, 9]])

# Access elements
element = A[1, 2]      # Row 1, Column 2
row = A[0, :]          # First row
column = A[:, 1]       # Second column
submatrix = A[0:2, 1:] # First 2 rows, columns 1 onwards

# Modify elements
A[0, 0] = 10           # Set single element
A[:, 0] = [11, 12, 13] # Set first column
```

---

## Practice

To get the 2nd row of matrix A:

```python
row = A[???]
```

- `1`
- `2:`
- `1:`
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