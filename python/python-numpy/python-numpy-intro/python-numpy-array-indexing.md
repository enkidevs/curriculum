---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Indexing](https://numpy.org/doc/stable/user/basics.indexing.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Array Indexing

---

## Content

Access array elements using indices:

Basic indexing:

```python
scores = np.array([85, 92, 77, 98])
first = scores[0]      # 85 (first score)
last = scores[-1]      # 98 (last score)
```

> 💡 Like Python lists, indexing starts at 0 and negative indices count from
> end!

Slicing (start:stop):

```python
scores = np.array([85, 92, 77, 98, 88])

# Get scores from index 1 to 3 (stop index not included)
middle = scores[1:4]   # array([92, 77, 98])

# Get every second score
every_other = scores[::2]  # array([85, 77, 88])
```

2D array indexing (rows, columns):

```python
grades = np.array([[85, 90],    # Student 1
                  [92, 88],     # Student 2
                  [77, 82]])    # Student 3

first_student = grades[0]    # array([85, 90])
first_test = grades[:, 0]   # array([85, 92, 77])
```

---

## Practice

Get elements from index 1 to 3:

```python
arr = np.array([1, 2, 3, 4, 5])
result = arr[???:???]
```

- `1`
- `4`
- `3`
- `2`

---

## Revision

To get the last element of an array:

???

- `arr[-1]`
- `arr[end]`
- `arr[last]`
- `arr[-0]`
