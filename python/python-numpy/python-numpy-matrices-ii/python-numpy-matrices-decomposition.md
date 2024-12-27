---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Matrix Decomposition](https://numpy.org/doc/stable/reference/routines.linalg.html#decompositions){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Matrix Decomposition

---

## Content

Decompose matrices into simpler forms:

```python
# Create a sample matrix
A = np.array([[4, 2, 1],
              [2, 3, 2],
              [1, 2, 3]])

# 1. LU Decomposition
# A = L @ U where L is lower triangular, U is upper
P, L, U = np.linalg.lu(A)
print("LU decomposition:")
print(f"L:\n{L}")
print(f"U:\n{U}")

# 2. QR Decomposition
# A = Q @ R where Q is orthogonal, R is upper triangular
Q, R = np.linalg.qr(A)
print("\nQR decomposition:")
print(f"Q:\n{Q}")
print(f"R:\n{R}")
```

> 💡 Different decompositions are useful for different problems!

---

## Practice

QR decomposition splits matrix A into:

???

- An orthogonal matrix Q and upper triangular R
- A lower triangular L and upper triangular U
- A diagonal matrix D and eigenvector matrix P
- A permutation matrix P and triangular matrix T

---

## Revision

QR decomposition splits matrix A into:

???

- An orthogonal matrix Q and upper triangular R
- A lower triangular L and upper triangular U
- A diagonal matrix D and eigenvector matrix P
- A permutation matrix P and triangular matrix T
