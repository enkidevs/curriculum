---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Type Conversion](https://numpy.org/doc/stable/reference/routines.type.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Type Conversion

---

## Content

Convert arrays to different types:

Using astype():

```python
arr = np.array([1, 2, 3])
floats = arr.astype(np.float32)
print(floats.dtype)  # float32
```

> 💡 Type conversion creates a new array!

Converting to integers:

```python
arr = np.array([1.9, 2.2, 3.7])
ints = arr.astype(np.int32)
print(ints)  # [1 2 3]
```

Safe conversion:

```python
arr = np.array([1000, 2000, 3000])
small = arr.astype(np.int8, casting='safe')
# Raises TypeError - values too large
```

---

## Practice

Convert array to 64-bit floats:

```python
arr = np.array([1, 2, 3])
result = arr.???(???)
```

- `astype`
- `np.float64`
- `dtype`
- `float`

---

## Revision

What happens when converting floats to integers?

???

- Numbers are truncated (decimal part removed)
- Numbers are rounded to nearest integer
- An error is raised
- Decimal parts are preserved
