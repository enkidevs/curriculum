---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Random Sampling](https://numpy.org/doc/stable/reference/random/index.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Random Numbers

---

## Content

Generate random numbers in NumPy:

Random integers:

```python
# Numbers between 0 and 10
nums = np.random.randint(0, 10, size=5)
# Example: [3, 7, 1, 4, 9]
```

> 💡 The size parameter determines how many numbers to generate!

Random floats:

```python
# Numbers between 0 and 1
floats = np.random.random(3)
# Example: [0.23, 0.15, 0.98]
```

Random choice:

```python
# Pick from array
options = np.array([10, 20, 30, 40])
choice = np.random.choice(options, size=2)
# Example: [30, 10]
```

---

## Practice

Generate 3 random integers from 1 to 5:

```python
nums = np.random.randint(1, 6, size=3)
```

- `randint`
- `1`
- `6`
- `random`
- `5`
- `3`

---

## Revision

Choose 2 random elements from an array:

```python
options = np.array([10, 20, 30, 40])
choice = np.???.???(options, ???)
```

- `random`
- `choice`
- `size=2`
- `rand`
- `select`
- `amount=2`
