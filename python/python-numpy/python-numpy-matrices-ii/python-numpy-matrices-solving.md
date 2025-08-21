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

With Numpy, you can solve matrix equations and systems.

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

---

## Practice

Complete the code to solve the system of equations: 2x + y = 5 4x + 3y = 11

```python
A = np.array([[2, 1],
              [4, ???]])
b = np.array([???, 11])
x = np.linalg.???(A, b)
```

- `3`
- `5`
- `solve`
- `inv`
- `1`
- `6`

---

## Revision

What is the correct way to verify if x is a valid solution to the system Ax = b?

```python
np.???(A @ x, b)
```

- `allclose`
- `equal`
- `isclose`
- `verify`
