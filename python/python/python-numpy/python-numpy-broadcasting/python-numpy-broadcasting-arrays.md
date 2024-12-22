---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Broadcasting](https://numpy.org/doc/stable/user/basics.broadcasting.html#array-broadcasting){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Broadcasting Arrays

---

## Content

Common broadcasting patterns:

Scale an array:

```python
heights = np.array([170, 175, 160])
heights_m = heights * 0.01
print(heights_m)  # [1.7 1.75 1.6]
```

> 💡 Broadcasting lets you avoid writing loops!

Add constant:

```python
temps = np.array([20, 21, 19])
temps_f = (temps * 1.8) + 32
print(temps_f)  # [68. 69.8 66.2]
```

Compare with threshold:

```python
scores = np.array([85, 92, 77, 95])
passed = scores >= 80
print(passed)  # [True True False True]
```

---

## Practice

Convert kilometers to miles:

```python
km = np.array([10, 20, 30])
miles = km * ???
```

- `0.621371`
- `1.60934`
- `1000`
- `0.001`

---

## Revision

Broadcasting is useful for:

???

- Avoiding loops
- Saving memory
- Sorting arrays
- Combining arrays
