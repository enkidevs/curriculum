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

Here's how you can perform basic matrix operations in NumPy:

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

Multiply two matrices A and B:

```python
result = A ??? B
```

- `@`
- `*`
- `x`
- `.`