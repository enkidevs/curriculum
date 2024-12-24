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

# Matrix Operations

---

## Content

Perform basic matrix operations:

```python
# Create sample matrices
A = np.array([[1, 2], [3, 4]])
B = np.array([[5, 6], [7, 8]])

# Basic arithmetic
sum_matrix = A + B          # Matrix addition
diff_matrix = A - B         # Matrix subtraction
element_prod = A * B        # Element-wise multiplication
element_div = A / B         # Element-wise division

# Matrix multiplication
matrix_prod = A @ B         # Matrix multiplication
# or
matrix_prod = np.matmul(A, B)
```

> 💡 Matrix multiplication is not commutative: A @ B ≠ B @ A!

Advanced operations:

```python
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

Multiply two matrices A and B:

```python
result = A ??? B
```

- `@`
- `*`
- `x`
- `.`

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