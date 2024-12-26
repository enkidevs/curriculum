---
author: enki-ai
type: normal
category: must-know
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

Eigendecomposition:

```python
# 3. Eigendecomposition
# A = P @ D @ P^(-1) where D is diagonal
eigenvalues, eigenvectors = np.linalg.eig(A)

# Sort by eigenvalue magnitude
idx = np.argsort(np.abs(eigenvalues))[::-1]
eigenvalues = eigenvalues[idx]
eigenvectors = eigenvectors[:, idx]

print("\nEigendecomposition:")
print(f"Eigenvalues:\n{eigenvalues}")
print(f"Eigenvectors:\n{eigenvectors}")
```

> 💡 Eigenvalues reveal important matrix properties!

---

## Practice

To get eigenvalues and eigenvectors of matrix A:

```python
values, vectors = np.linalg.???(???)
```

- `eig`
- `A`
- `eigenvals`
- `eigen`
- `decompose`
- `matrix`

---

## Revision

QR decomposition splits matrix A into:

???

- An orthogonal matrix Q and upper triangular R
- A lower triangular L and upper triangular U
- A diagonal matrix D and eigenvector matrix P
- A permutation matrix P and triangular matrix T