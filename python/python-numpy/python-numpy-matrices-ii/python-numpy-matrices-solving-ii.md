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

# Solving Matrix Equations II

---

## Content

With Numpy, you can solve advanced matrix equations.

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

Complete the code to find the least squares solution for an overdetermined
system:

```python
# A is a 3x2 matrix, b is a vector
x_ls, residuals, rank, s = np.linalg.???(A, b, rcond=???)
```

- `lstsq`
- `None`
- `solve`
- `0`
- `inv`
- `True`

---

## Revision

When solving a system with more equations than unknowns (overdetermined), the
best approach is to use:

```python
x_ls, residuals, rank, s = ???(A, b)
```

- `np.linalg.lstsq`
- `np.linalg.solve`
- `np.linalg.inv`
- `np.dot`
