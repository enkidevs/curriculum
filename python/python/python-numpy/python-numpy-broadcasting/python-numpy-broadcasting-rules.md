---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Broadcasting Rules](https://numpy.org/doc/stable/user/basics.broadcasting.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Broadcasting Rules

---

## Content

NumPy can operate on arrays of different sizes:

Add scalar to array:

```python
arr = np.array([1, 2, 3])
result = arr + 10
print(result)  # [11 12 13]
```

> 💡 Broadcasting copies the scalar to match array shape!

Array shapes must be compatible:

```python
a = np.array([1, 2, 3])
b = np.array([[4], [5]])
sum = a + b  # Works! a is broadcast
print(sum)
# [[5 6 7]
#  [6 7 8]]
```

Incompatible shapes:

```python
a = np.array([1, 2])
b = np.array([3, 4, 5])
sum = a + b  # Error! Shapes don't match
```

---

## Practice

What's the result?

```python
a = np.array([1, 2, 3])
b = 2
result = a * b
# ???
```

- `[2 4 6]`
- `[1 2 3 2]`
- `Error`
- `2`

---

## Revision

Broadcasting works when:

???

- Shapes are compatible
- Arrays are same size
- Arrays are 1D
- Arrays are 2D
