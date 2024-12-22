---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Shape Rules](https://numpy.org/doc/stable/user/basics.broadcasting.html#general-broadcasting-rules){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Broadcasting Shapes

---

## Content

Understanding shape compatibility:

Compare from right:

```python
a = np.array([1, 2, 3])     # Shape: (3,)
b = np.array([[1], [2]])    # Shape: (2, 1)
# Result shape: (2, 3)
```

> 💡 Dimensions must match or be 1 or missing!

Shape rules:

```python
# Works: (3,) and (3,)
a = np.array([1, 2, 3])
b = np.array([4, 5, 6])

# Works: (3,) and (1,)
a = np.array([1, 2, 3])
b = np.array([4])

# Fails: (2,) and (3,)
a = np.array([1, 2])
b = np.array([4, 5, 6])
```

---

## Practice

Can these shapes be broadcast?

```python
a = np.array([[1, 2]])  # Shape: (1, 2)
b = np.array([[3],      # Shape: (2, 1)
              [4]])
# ???
```

- Yes
- No
- Depends on values
- Only if equal

---

## Revision

When comparing shapes for broadcasting, we start from:

???

- Right
- Left
- Middle
- Any side
