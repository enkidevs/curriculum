---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Memory Efficiency](https://numpy.org/doc/stable/reference/arrays.ndarray.html#memory-layout){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Memory Efficiency

---

## Content

Choose efficient data types to save memory:

Check memory usage:

```python
arr = np.array([1, 2, 3], dtype=np.int64)
print(arr.nbytes)  # 24 bytes (8 per number)
```

> 💡 Smaller data types use less memory but have limited range!

Use smaller types when possible:

```python
small = np.array([1, 2, 3], dtype=np.int8)
print(small.nbytes)  # 3 bytes (1 per number)
```

Compare ranges:

```python
print(np.iinfo(np.int8))  # min=-128, max=127
print(np.iinfo(np.int32)) # min=-2147483648
                         # max=2147483647
```

---

## Practice

Which uses less memory?

```python
a = np.array([1, 2], dtype=np.int64)
b = np.array([1, 2], dtype=np.int8)
```

???

- `b`
- `a`
- Both the same
- Depends on values

---

## Revision

To check how many bytes an array uses:

```python
arr = np.array([1, 2, 3])
size = arr.???
```

- `nbytes`
- `size`
- `memory`
- `bytes`
