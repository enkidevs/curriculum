---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Python coding playground
    # You're managing an investment portfolio!
    # Tasks:
    # - Calculate daily returns for each stock
    # - Find the best and worst performing stock
    # - Compute portfolio value over time
    # - Compare with market benchmark

    # Type your code here:
    import numpy as np

    # Stock prices for 3 stocks over 5 days
    prices = np.array([
        [100, 50, 75],    # Day 1
        [102, 48, 77],    # Day 2
        [101, 51, 76],    # Day 3
        [103, 49, 78],    # Day 4
        [102, 52, 77]     # Day 5
    ])

    # Portfolio weights (40%, 30%, 30%)
    weights = np.array([0.4, 0.3, 0.3])

    # Market index
    market = np.array([1000, 1010, 995, 1015, 1005])

    # Your analysis code:
---

# Portfolio Analysis

---

## Content

> 👩‍💻 Your task is to analyze and track portfolio performance!

To solve this, try using:

- Array operations for returns
- Statistical functions for analysis
- Broadcasting for portfolio values
- Comparison operations for benchmarking

Give it a try, and feel free to experiment!

> 💡 Remember that returns are calculated as (price_today - price_yesterday) /
> price_yesterday!

If you're stuck, try breaking it down:

1. Calculate daily returns
2. Find best/worst stocks
3. Track portfolio value
4. Compare performance
