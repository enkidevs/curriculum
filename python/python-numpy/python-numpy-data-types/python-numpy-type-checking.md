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

Verify data types in your arrays:

```python
# Price data with mixed types
prices = np.array([19.99, 29.99, 39.99])
quantities = np.array([100, 150, 200])

# Check data types
print(prices.dtype)     # float64
print(quantities.dtype) # int64

# Verify types match requirements
is_float = prices.dtype.kind == 'f'    # True
is_int = quantities.dtype.kind == 'i'   # True
```

> 💡 Use `dtype.kind` to check general type categories!

Inspect type details:

```python
# Temperature readings
temps = np.array([-10, 5, 15], dtype=np.int8)

# Get type information
print(temps.dtype.itemsize)  # 1 (bytes per number)
print(temps.dtype.name)      # int8
print(temps.dtype.kind)      # i (integer)
print(temps.dtype.str)       # i1 (integer, 1 byte)

# Check if type can handle data
max_allowed = np.iinfo(temps.dtype).max  # 127
min_allowed = np.iinfo(temps.dtype).min  # -128
```

> 💡 Check value ranges to prevent overflow errors!

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
