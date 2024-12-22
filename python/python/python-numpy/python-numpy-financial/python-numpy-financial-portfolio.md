---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Portfolio Analysis](https://numpy.org/doc/stable/reference/routines.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Portfolio Analysis

---

## Content

Analyze investment portfolios:

Portfolio returns:

```python
# Calculate weighted returns
weights = np.array([0.4, 0.6])  # 40%/60% split
returns = np.array([[0.01, 0.02],
                   [0.02, 0.01]])  # 2 assets
port_return = np.sum(returns * weights, axis=1)
```

> 💡 Portfolio weights must sum to 1!

Portfolio risk:

```python
# Calculate portfolio variance
cov_matrix = np.cov(returns.T)
port_var = weights.T @ cov_matrix @ weights
port_std = np.sqrt(port_var)  # Portfolio risk
```

Portfolio optimization:

```python
# Generate random portfolios
n_ports = 1000
random_weights = np.random.random((n_ports, 2))
normalized = random_weights / random_weights.sum(axis=1, keepdims=True)
```

---

## Practice

Calculate portfolio return:

```python
w = np.array([0.5, 0.5])
r = np.array([[1, 2], [3, 4]])
ret = np.???(r * w, ???=1)
```

- `sum`
- `axis`
- `mean`
- `dim`

---

## Revision

Portfolio weights should:

???

- Sum to 1
- Be equal
- Be positive
- Be less than 1
