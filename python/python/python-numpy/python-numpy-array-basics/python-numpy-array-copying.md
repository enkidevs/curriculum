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

Create independent copies of arrays:

View vs Copy:

```python
a = np.array([1, 2, 3])
b = a          # Creates a view
c = a.copy()   # Creates a copy
```

> 💡 Changes to a view affect the original array!

Demonstrate the difference:

```python
a[0] = 9
print(b[0])    # 9 (view changes)
print(c[0])    # 1 (copy unchanged)
```

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
