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

# Broadcasting Shapes

---

## Content

Understanding shape compatibility:

```python
# Shape comparison happens from right to left
# (3,)       [1, 2, 3]
# (2, 3)     [[1, 2, 3],
#             [4, 5, 6]]
#  ↑  ↑
#  |  These must match
#  These can be different

# Examples of compatible shapes:
a = np.array([1, 2, 3])           # Shape: (3,)
b = np.array([[4, 5, 6],          # Shape: (2, 3)
              [7, 8, 9]])
result = a + b                    # Works!
```

> 💡 Missing dimensions are added as 1's from the left!

Shape matching rules:

```python
# Rule 1: Equal dimensions match
(3,) + (3,)         # ✓ Works
(2, 3) + (2, 3)     # ✓ Works
(2, 3) + (3, 3)     # ✗ Error!

# Rule 2: Dimension of 1 matches anything
(3, 1) + (3, 4)     # ✓ Works
(1, 3) + (4, 3)     # ✓ Works
(3, 2) + (3, 1)     # ✓ Works

# Rule 3: Missing dimensions are treated as 1
(3,) + (2, 3)       # ✓ (1, 3) + (2, 3) Works
(5,) + (2, 5, 3)    # ✗ (1, 1, 5) + (2, 5, 3) Error!
```

> 💡 Use array.shape to check dimensions before operations!

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
