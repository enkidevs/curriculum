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

# AdvancedMatrix Operations

---

## Content

Here's how you can perform advanced matrix operations in NumPy:

```python
# Create sample matrices
A = np.array([[1, 2], [3, 4]])
B = np.array([[5, 6], [7, 8]])

# Matrix transformations
transpose = A.T            # Transpose
inverse = np.linalg.inv(A) # Matrix inverse
det = np.linalg.det(A)     # Determinant

# Matrix powers
squared = np.linalg.matrix_power(A, 2)  # A²
cubed = np.linalg.matrix_power(A, 3)    # A³

# Check properties
is_symmetric = np.allclose(A, A.T)
is_orthogonal = np.allclose(A @ A.T, np.eye(2))
```

> 💡 Always check matrix dimensions for compatibility!

---

## Practice

Make an inverse of matrix A:

```python
result = np.linalg.???(A)
```

- `inv`
- `transpose`
- `power`
- `det`

---

## Revision

The transpose of matrix A is:

```python
transpose = A.???
```

- `T`
- `transpose`
- `t`
- `trans`