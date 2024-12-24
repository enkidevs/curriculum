---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Data Types](https://numpy.org/doc/stable/user/basics.types.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# NumPy Numeric Types

---

## Content

Choose the right type for your data:

```python
# Sensor readings (whole numbers only)
temperatures = np.array([21, 24, 23, 25], dtype=np.int8)
# int8: -128 to 127 (good for room temperatures)

# Price data (needs decimal precision)
prices = np.array([29.99, 39.99, 59.99], dtype=np.float32)
# float32: ~7 decimal digits precision

# Scientific measurements (high precision)
measurements = np.array([1.23456789, 2.34567891], dtype=np.float64)
# float64: ~16 decimal digits precision
```

> 💡 Choose types based on your data range and precision needs!

Common numeric types:

```python
# Integer types
uint8   # 0 to 255 (unsigned)
int8    # -128 to 127
int16   # -32,768 to 32,767
int32   # -2,147,483,648 to 2,147,483,647
int64   # -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807

# Float types
float32 # ~7 decimal digits precision
float64 # ~16 decimal digits precision (default)

# Complex numbers (for signal processing)
complex64  # two 32-bit floats
complex128 # two 64-bit floats
```

> 💡 Smaller types use less memory but have limited range!

---

## Practice

Create an array of 32-bit integers:

```python
arr = np.array([1, 2, 3], dtype=???)
```

- `np.int32`
- `int32`
- `numpy.int32`
- `int`

---

## Revision

What's the default type for decimal numbers in NumPy?

???

- `float64`
- `float32`
- `decimal`
- `double`
