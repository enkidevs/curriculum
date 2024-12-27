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

# Rounding Up or Down

---

## Content

NumPy offers various rounding functions to round up or down to the nearest integer.

```python
arr = np.array([1.2, 2.7, 3.5])
rounded = np.round(arr)
# array([1., 3., 4.])
```

> 💡 .5 values are rounded to nearest even number!

Floor (round down):

```python
arr = np.array([1.7, 2.2, 3.9])
floor = np.floor(arr)
# array([1., 2., 3.])
```

Ceiling (round up):

```python
arr = np.array([1.1, 2.8, 3.2])
ceil = np.ceil(arr)
# array([2., 3., 4.])
```

---

## Practice

Round these numbers down:

```python
arr = np.array([1.9, 2.1])
result = np.???(arr)
# array([1., 2.])
```

- `floor`
- `round`
- `down`
- `ceil`

---

## Revision

To round up to nearest integer:

???

- `np.ceil(arr)`
- `np.ceiling(arr)`
- `np.up(arr)`
- `np.round_up(arr)`
