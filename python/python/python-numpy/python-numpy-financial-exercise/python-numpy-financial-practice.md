---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Portfolio Analysis Exercise!
    # You're analyzing a diversified investment portfolio.

    import numpy as np

    # Daily closing prices for 4 stocks (tech, finance, energy, retail)
    prices = np.array([
        # AAPL, JPM, XOM, WMT
        [150.25, 140.50, 85.75, 125.30],  # Monday
        [152.50, 141.25, 84.80, 126.75],  # Tuesday
        [151.75, 139.90, 86.25, 124.50],  # Wednesday
        [153.25, 142.75, 85.90, 127.80],  # Thursday
        [154.50, 141.80, 86.50, 126.90]   # Friday
    ])

    # Your tasks:
    # 1. Calculate daily returns for each stock
    returns = ???  # Hint: Use np.diff and axis parameter

    # 2. Create portfolio weights (must sum to 1)
    weights = np.array([0.35, 0.25, 0.20, 0.20])  # 35/25/20/20 split

    # 3. Calculate portfolio statistics
    port_returns = ???  # Daily portfolio returns
    port_risk = ???    # Portfolio volatility (annualized)

    # 4. Risk analysis
    # Value at Risk (95% confidence)
    var_95 = ???

    # Maximum drawdown
    portfolio_values = ???  # Daily portfolio values
    max_drawdown = ???

    # 5. Performance metrics
    risk_free_rate = 0.02 / 252  # Daily risk-free rate
    sharpe_ratio = ???

    # 6. Compare with benchmark (S&P 500)
    benchmark = np.array([4200, 4225, 4180, 4240, 4210])
    relative_performance = ???
---

# Portfolio Analysis

---

## Content

> 👩‍💻 Practice financial analysis with a real portfolio!

This exercise covers all financial analysis concepts:

- Return calculations
- Portfolio optimization
- Risk metrics
- Performance analysis

Example calculations:

```python
# Calculate stock returns
daily_returns = np.diff(prices, axis=0) / prices[:-1]

# Portfolio value
initial_value = 100000  # $100k investment
stock_units = (initial_value * weights) / prices[0]
daily_values = np.sum(prices * stock_units, axis=1)

# Risk metrics
volatility = np.std(returns, ddof=1) * np.sqrt(252)
var_95 = np.percentile(returns, 5)
tracking_error = np.std(returns - benchmark_returns)
```

> 💡 Remember:
>
> - Always annualize volatility
> - Use appropriate time periods
> - Consider risk-adjusted returns
> - Compare with benchmarks
