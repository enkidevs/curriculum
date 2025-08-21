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

NumPy provides useful tools to analyze matrices. Let's look at three important
ones:

```python
# Create a sample matrix
A = np.array([[4, -2, 1],
              [-2, 3, -1],
              [1, -1, 2]])

# 1. Matrix Rank
# Shows how many linearly independent rows/columns exist
rank = np.linalg.matrix_rank(A)
print(f"Matrix rank: {rank}")

# 2. Matrix Norms
# Measure the "size" of the matrix
frobenius_norm = np.linalg.norm(A, 'fro')  # Most common norm
print(f"Frobenius norm: {frobenius_norm:.2f}")

# 3. Condition Number
# Indicates numerical stability (lower is better)
cond = np.linalg.cond(A)
print(f"Condition number: {cond:.2f}")
```

> 💡 A high condition number (>1000) suggests the matrix operations might be
> numerically unstable!

---

## Practice

Calculate the Frobenius norm of matrix A:

```python
norm = np.linalg.???(A, '???')
```

- `norm`
- `fro`
- `frobenius`
- `matrix_norm`
- `F`
- `size`

---

## Revision

Which NumPy function tells you how many linearly independent rows/columns a
matrix has?

```python
np.linalg.???(A)
```

- `matrix_rank`
- `rank`
- `independence`
- `dim`
