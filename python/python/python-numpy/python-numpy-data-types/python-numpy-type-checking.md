---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Data Type Objects](https://numpy.org/doc/stable/reference/arrays.dtypes.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Type Checking

---

## Content

Check array data types:

Get array type:

```python
arr = np.array([1, 2, 3])
print(arr.dtype)  # int64
```

> 💡 The dtype attribute tells you the exact type of data!

Check if types match:

```python
arr1 = np.array([1, 2], dtype=np.int32)
arr2 = np.array([3, 4], dtype=np.int32)
print(arr1.dtype == arr2.dtype)  # True
```

Test type properties:

```python
dtype = np.dtype(np.int32)
print(dtype.itemsize)  # 4 bytes
print(dtype.name)      # int32
print(dtype.kind)      # i (integer)
```

---

## Practice

Check if an array contains integers:

```python
arr = np.array([1.0, 2.0])
is_int = arr.dtype.??? == '???'
```

- `kind`
- `i`
- `type`
- `int`

---

## Revision

Get the size in bytes of each element:

```python
arr = np.array([1, 2, 3])
size = arr.dtype.???
```

- `itemsize`
- `size`
- `bytes`
- `length`
