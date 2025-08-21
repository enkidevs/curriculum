---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Joining](https://numpy.org/doc/stable/reference/routines.array-manipulation.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Joining 2D Arrays

---

## Content

To join 2D arrays horizontally, use `concatenate` with `axis=1`:

```python
# First semester grades
sem1 = np.array([[85, 92],    # Student 1
                 [78, 85],    # Student 2
                 [90, 88]])   # Student 3

# Second semester grades
sem2 = np.array([[88, 95],    # Student 1
                 [82, 89],    # Student 2
                 [93, 91]])   # Student 3

# Join horizontally (add columns)
year = np.concatenate([sem1, sem2], axis=1)
# array([[85, 92, 88, 95],
#        [78, 85, 82, 89],
#        [90, 88, 93, 91]])
```

To join 2D arrays vertically, use `concatenate` with `axis=0`:

```python
# Join vertically (add rows)
year = np.concatenate([sem1, sem2], axis=0)
# array([[85, 92],
#        [78, 85],
#        [90, 88],
#        [88, 95],
#        [82, 89],
#        [93, 91]])
```

> 💡 `concatenate` joins arrays end-to-end, `axis=1` adds columns, `axis=0` adds
> rows. By default, `axis=0` is used.

---

## Practice

Join these 2D arrays vertically:

```python
sem1 = np.array([[85, 92],    # Student 1
                 [78, 85],    # Student 2
                 [90, 88]])   # Student 3

sem2 = np.array([[88, 95],    # Student 1
                 [82, 89],    # Student 2
                 [93, 91]])   # Student 3

result = np.???(???)
# array([[85, 92, 88, 95],
#        [78, 85, 82, 89],
#        [90, 88, 93, 91]])
```

- `concatenate`
- `[sem1, sem2]`
- `axis=1`
- `join`
- `merge`

---

## Revision

To join arrays horizontally, use ??? with ???.

- `concatenate`
- `axis=1`
- `axis=0`
- `join`
- `merge`
