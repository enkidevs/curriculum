---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Eigenvalues](https://numpy.org/doc/stable/reference/routines.linalg.html#matrix-eigenvalues){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Matrix Eigendecomposition

---

## Content

Eigendecomposition is a way to decompose a matrix into its eigenvalues and eigenvectors.

> 💡 Think of it like breaking down a transformation (matrix) into its basic "stretching factors" (eigenvalues) and "stretching directions" (eigenvectors). 

```python
# Create a sample matrix
A = np.array([[4, 2, 1],
              [2, 3, 2],
              [1, 2, 3]])

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

> 💡 Eigenvalues: Numbers that show how much the matrix stretches or squishes in certain directions

> 💡 Eigenvectors: The directions in which this stretching/squishing happens

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

