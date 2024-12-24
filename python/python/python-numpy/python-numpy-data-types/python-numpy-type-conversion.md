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

# Type Conversion

---

## Content

Convert arrays between types safely:

```python
# Price data stored as integers (cents)
prices_cents = np.array([1999, 2999, 3999])

# Convert to dollars (float)
prices_dollars = prices_cents.astype(np.float32) / 100
# array([19.99, 29.99, 39.99])

# Convert back to cents (safe)
back_to_cents = np.round(prices_dollars * 100).astype(np.int32)
# array([1999, 2999, 3999])
```

> 💡 Use `round()` before converting floats to integers to avoid data loss!

Handle conversion errors:

```python
# Temperature readings (too large for int8)
temps = np.array([100, 120, -15, 35])

try:
    # Attempt unsafe conversion
    small_temps = temps.astype(np.int8, casting='safe')
except TypeError:
    print("Values out of range for int8!")
    # Use a larger type instead
    small_temps = temps.astype(np.int16)

# Check value ranges before converting
max_i8 = np.iinfo(np.int8).max  # 127
min_i8 = np.iinfo(np.int8).min  # -128
```

> 💡 Use 'safe' casting to prevent silent overflow errors!

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
