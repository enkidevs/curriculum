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

# Matrix Equations

---

## Content

Solve matrix equations and systems:

```python
# Create system of equations:
# 2x + y = 5
# x + 3y = 6

# 1. Solve using matrix form Ax = b
A = np.array([[2, 1],
              [1, 3]])
b = np.array([5, 6])

# Solve for x
x = np.linalg.solve(A, b)
print(f"Solution: x = {x[0]:.2f}, y = {x[1]:.2f}")

# Verify solution
print(f"Verification: {np.allclose(A @ x, b)}")
```

> 💡 np.linalg.solve is more efficient than computing inverse!

Advanced solving:

```python
# 2. Least squares solution (overdetermined system)
# More equations than unknowns
A = np.array([[2, 1],
              [1, 3],
              [1, 1]])
b = np.array([5, 6, 3])

# Solve using least squares
x_ls, residuals, rank, s = np.linalg.lstsq(A, b, rcond=None)
print(f"\nLeast squares solution:")
print(f"x = {x_ls[0]:.2f}, y = {x_ls[1]:.2f}")
print(f"Residual sum: {residuals[0]:.2f}")
```

> 💡 Least squares finds the best fit when exact solution doesn't exist!

---

## Practice

Solve the system Ax = b:

```python
x = np.linalg.???(???, ???)
```

- `solve`
- `A`
- `b`
- `inv`
- `x`
- `system`

---

## Revision

For overdetermined systems, use:

???

- `np.linalg.lstsq`
- `np.linalg.solve`
- `np.linalg.inv`
- `np.linalg.det`