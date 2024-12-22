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

# Scientific Random Numbers

---

## Content

Generate random numbers for scientific simulations:

Normal distribution:

```python
# Generate normally distributed values
mu, sigma = 0, 1  # mean and standard deviation
samples = np.random.normal(mu, sigma, 1000)
```

> 💡 Normal distributions are common in natural phenomena!

Uniform distribution:

```python
# Random numbers between bounds
low, high = 0, 10
uniform = np.random.uniform(low, high, 1000)
```

Random sampling:

```python
# Sample from a dataset
data = np.array([1, 2, 3, 4, 5])
choices = np.random.choice(data, size=3, 
                         replace=True)  # with replacement
```

---

## Practice

Generate normal distribution:

```python
values = np.random.???(???, ???, 100)
```

- `normal`
- `0`
- `1`
- `gaussian`
- `std`
- `mean`

---

## Revision

For random sampling with replacement:

```python
samples = np.random.choice(data, size=10, 
                         replace=???)
```

- `True`
- `False`
- `1`
- `0`
