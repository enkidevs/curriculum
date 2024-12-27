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

# Creating Matrices

---

## Content

Here's how you can create matrices in NumPy:

```python
# Create matrices
A = np.array([[1, 2, 3],
              [4, 5, 6],
              [7, 8, 9]])

# Matrix properties
print(f"Shape: {A.shape}")       # (3, 3)
print(f"Size: {A.size}")         # 9
print(f"Dimensions: {A.ndim}")   # 2

# Special matrices
identity = np.eye(3)             # 3x3 identity matrix
zeros = np.zeros((3, 4))         # 3x4 zero matrix
ones = np.ones((2, 3))           # 2x3 ones matrix
random = np.random.rand(3, 3)    # Random 3x3 matrix
```

---

## Practice

Create a 3x3 identity matrix:

```python
I = np.???(???)
```

- `eye`
- `3`
- `identity`
- `ones`
- `zeros`
- `2`

---

## Revision

Create a 3x3 identity matrix:

```python
I = np.???(???)
```

- `eye`
- `3`
- `3, 3`
- `identity`
- `ones`
- `zeros`