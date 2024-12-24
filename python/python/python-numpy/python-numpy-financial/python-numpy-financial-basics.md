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

# Financial Basics

---

## Content

Analyze financial market data:

```python
# Stock price analysis
prices = np.array([
    105.23, 106.48, 105.97, 107.52, 106.98,  # Monday-Friday
    108.31, 109.42, 108.89, 109.73, 110.21   # Next week
])

# 1. Calculate daily returns
daily_returns = np.diff(prices) / prices[:-1]
print(f"Average daily return: {daily_returns.mean():.2%}")

# 2. Calculate price trends
# 5-day moving average (trading week)
window = 5
weights = np.ones(window) / window
ma_5day = np.convolve(prices, weights, mode='valid')

# Exponential moving average (more weight to recent prices)
alpha = 0.2  # Smoothing factor
ema = np.zeros_like(prices)
ema[0] = prices[0]
for i in range(1, len(prices)):
    ema[i] = alpha * prices[i] + (1 - alpha) * ema[i-1]
```

> 💡 Moving averages help identify price trends!

Investment growth calculations:

```python
# Investment scenarios
initial = 10000  # Initial investment
rates = np.array([0.05, 0.07, 0.10])  # Different return rates
years = np.arange(1, 11)  # 10-year projection

# Compound growth
future_values = initial * (1 + rates.reshape(-1, 1)) ** years
print("Investment values after 10 years:")
for rate, values in zip(rates, future_values):
    print(f"At {rate:.0%}: ${values[-1]:,.2f}")
```

> 💡 Use array broadcasting for multiple scenarios!

---

## Practice

Calculate percentage changes:

```python
prices = np.array([10, 11, 10.5])
changes = np.???(prices) / prices[???]
```

- `diff`
- `:-1`
- `changes`
- `1:`

---

## Revision

For a 5-day moving average, use weights:

```python
w = np.???(???) / ???
```

- `ones`
- `5`
- `5`
- `zeros`
- `mean`
- `3`
