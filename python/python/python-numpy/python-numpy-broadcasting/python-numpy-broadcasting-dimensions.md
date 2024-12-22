---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Broadcasting Dimensions](https://numpy.org/doc/stable/user/basics.broadcasting.html#more-than-two-dimensions){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Broadcasting Dimensions

---

## Content

Broadcasting with higher dimensions:

3D array with 1D:

```python
cube = np.array([[[1], [2]], [[3], [4]]])
vector = np.array([10, 20])
result = cube + vector
# array([[[11, 21],
#         [12, 22]],
#        [[13, 23],
#         [14, 24]]])
```

> 💡 Missing dimensions are added from the left!

Shape matching:

```python
a = np.zeros((2, 1, 3))  # Shape: (2, 1, 3)
b = np.ones((3,))        # Shape: (3,)
# b is treated as (1, 1, 3)
result = a + b           # Works!
```

---

## Practice

What shape is added to a (2,3) array to make it (4,2,3)?

???

- (4,1,1)
- (4,2,3)
- (1,2,3)
- (4,2)

---

## Revision

Missing dimensions are added from:

???

- Left
- Right
- Both sides
- Middle
