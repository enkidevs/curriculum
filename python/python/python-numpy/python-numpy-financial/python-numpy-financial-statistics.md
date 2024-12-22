---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Financial Statistics](https://numpy.org/doc/stable/reference/routines.statistics.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Financial Statistics

---

## Content

Calculate financial statistics:

Return statistics:

```python
# Analyze returns distribution
returns = np.array([0.01, -0.02, 0.03, -0.01])
mean_return = np.mean(returns)
std_return = np.std(returns)  # Volatility
```

> 💡 Standard deviation measures investment risk!

Annualization:

```python
# Annualize daily statistics
days = 252  # Trading days per year
annual_return = mean_return * days
annual_vol = std_return * np.sqrt(days)
```

Sharpe ratio:

```python
# Risk-adjusted return
risk_free = 0.02  # 2% risk-free rate
excess = mean_return - risk_free/days
sharpe = excess / std_return * np.sqrt(days)
```

---

## Practice

Calculate annualized volatility:

```python
daily_std = np.std(returns)
annual = daily_std * np.???(???)
```

- `sqrt`
- `252`
- `pow`
- `365`

---

## Revision

The Sharpe ratio uses:

???

- Standard deviation in denominator
- Mean return in denominator
- Sum of returns
- Product of returns
