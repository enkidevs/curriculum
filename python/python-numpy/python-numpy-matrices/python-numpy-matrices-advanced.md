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

# Advanced Matrix Operations

---

## Content

Work with advanced matrix concepts:

```python
# Create sample matrices
A = np.array([[4, -2, 1],
              [-2, 3, -1],
              [1, -1, 2]])

# 1. Matrix Condition Number
# Measure of matrix stability
cond = np.linalg.cond(A)
print(f"Condition number: {cond:.2f}")

# 2. Matrix Rank
# Number of linearly independent rows/columns
rank = np.linalg.matrix_rank(A)
print(f"Matrix rank: {rank}")

# 3. Matrix Norms
frobenius_norm = np.linalg.norm(A, 'fro')  # Frobenius norm
spectral_norm = np.linalg.norm(A, 2)       # Spectral norm (largest singular value)
```

> 💡 Condition number indicates how sensitive matrix operations are to errors!

Advanced applications:

```python
# 4. Singular Value Decomposition (SVD)
# A = U @ Σ @ Vh where Σ contains singular values
U, s, Vh = np.linalg.svd(A)

# 5. Matrix Exponential
# Useful for solving systems of differential equations
expm = np.linalg.matrix_power(A, 1)  # e^A

# 6. Null Space
# Find vectors x where Ax = 0
null_space = np.linalg.null_space(A)
```

> 💡 SVD is powerful for dimensionality reduction and data analysis!

---

## Practice

Calculate the rank of matrix A:

```python
rank = np.linalg.???(???)
```

- `matrix_rank`
- `A`
- `rank`
- `det`
- `solve`
- `null`

---

## Revision

The condition number indicates:

???

- Matrix sensitivity to errors
- Matrix determinant
- Matrix size
- Matrix rank