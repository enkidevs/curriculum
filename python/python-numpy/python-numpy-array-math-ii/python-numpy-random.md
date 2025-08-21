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

We can use NumPy to generate random numbers:

```python
# Set seed for reproducible results
# this means we'll get the same random numbers each time
# which is useful for testing and debugging
np.random.seed(42)

# Simulate daily sales (30-100 units)
daily_sales = np.random.randint(30, 101, size=7)
# array([49, 67, 93, 51, 88, 72, 60])

# Generate random prices ($10-$50)
prices = np.random.uniform(10, 50, size=5)
# array([24.76, 41.23, 15.89, 33.45, 47.12])
```

> 💡 Use `seed()` to get the same random numbers each time!

We can use this to generate random samples from data:

```python
# Customer IDs
customers = np.array([101, 102, 103, 104, 105, 106])

# Random sample for survey (3 customers)
survey = np.random.choice(customers, size=3, replace=False)
# array([104, 102, 106])

# Generate success probabilities
conversion_rates = np.random.random(size=4)
# array([0.23, 0.15, 0.67, 0.45])
```

> 💡 Use `replace=False` to avoid duplicate selections!

---

## Practice

Generate 3 random integers from 1 to 5:

```python
nums = np.random.randint(1, 6, size=3)
```

???

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
