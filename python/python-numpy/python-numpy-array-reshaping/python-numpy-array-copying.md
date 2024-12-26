---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Copying](https://numpy.org/doc/stable/reference/generated/numpy.copy.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Copying Arrays

---

## Content

When working with arrays, you can create:

- Views (references to the same data)
- Copies (independent data)

```python
# Original data
measurements = np.array([25, 30, 35])

# Create a view (changes affect original)
view = measurements.view()
view[0] = 20
print(measurements)  # array([20, 30, 35])

# Create a copy (changes don't affect original)
copy = measurements.copy()
copy[0] = 15
print(measurements)  # array([20, 30, 35])
```

> ⚠️ Views modify the original data, copies are independent!

Common use cases:

```python
# Use view when you only need to 
# modify attributes but keep the data
# e.g. changing the shape of an array
data = np.array([[1, 2, 3],
                 [4, 5, 6]])
data.shape = (2, 3)
# array([[1, 2],
#        [3, 4],
#        [5, 6]])

# Use copy when you need to modify data
# without affecting the original
data = np.array([[1, 2, 3],
                 [4, 5, 6]])
row = data[0].copy()     # Copy first row
row[0] = 99              # Safe to modify

# Creating a backup
original = np.array([1, 2, 3])
backup = original.copy()  # Save original state
```

> 💡 Use `copy()` when you need to modify data without affecting the original!

---

## Practice

What's printed?

```python
x = np.array([1, 2, 3])
y = x.copy()
x[0] = 5
print(y[0])
# ???
```

- `1`
- `5`
- `2`
- `3`

---

## Revision

To create an independent copy of an array:

???

- `array.copy()`
- `array.view()`
- `array.new()`
- `array.clone()`
