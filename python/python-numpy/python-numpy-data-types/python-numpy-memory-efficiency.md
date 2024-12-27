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

Optimize memory usage with appropriate types:

```python
# Sales data (1000 transactions)
sales = np.random.randint(0, 1000, size=1000)

# Check memory usage with different types
as_int64 = sales.astype(np.int64)
as_int32 = sales.astype(np.int32)
as_int16 = sales.astype(np.int16)

print(f"int64: {as_int64.nbytes} bytes")  # 8000 bytes
print(f"int32: {as_int32.nbytes} bytes")  # 4000 bytes
print(f"int16: {as_int16.nbytes} bytes")  # 2000 bytes
```

> 💡 Smaller types can significantly reduce memory usage in large arrays!

Choose appropriate types:

```python
# Temperature readings (-50 to 50°C)
# int8 is enough (-128 to 127)
temps = np.array([21, 25, 19, 22], dtype=np.int8)
print(f"Memory per value: {temps.itemsize} byte")  # 1 byte

# Prices ($0 to $999.99)
# float32 provides enough precision
prices = np.array([19.99, 29.99, 99.99], dtype=np.float32)
print(f"Memory per value: {prices.itemsize} bytes")  # 4 bytes
```

> 💡 Consider your data range when choosing types!

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
