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

Understanding array copying is crucial when:

- Modifying data without affecting the original
- Sharing data between functions
- Debugging unexpected changes

When working with arrays, you can create:

- Views (references to the same data)
- Copies (independent data)

```python
# Image processing example
original = np.array([[100, 150], 
                     [200, 250]])  # Original image
view = original.view()             # Create view
copy = original.copy()             # Create copy

# Modify the view (affects original)
view[0, 0] = 0
print(original[0, 0])  # 0

# Modify the copy (original unchanged)
copy[0, 0] = 255
print(original[0, 0])  # 0
```

> ⚠️ Changes to a view affect the original array!

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
