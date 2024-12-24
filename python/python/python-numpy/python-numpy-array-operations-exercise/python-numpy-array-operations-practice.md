---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Stock Market Analysis Exercise!
    # You're analyzing daily trading data.
    
    import numpy as np
    
    # Stock prices for 4 companies over 5 days
    prices = np.array([
        [100, 102, 98, 103, 105],  # Company A
        [50, 52, 49, 51, 48],      # Company B
        [75, 74, 77, 76, 80],      # Company C
        [25, 26, 24, 25, 27]       # Company D
    ])
    
    # Number of shares for each company (in thousands)
    shares = np.array([1000, 2000, 1500, 3000])
    
    # Your tasks:
    # 1. Calculate daily price changes
    changes = prices[:, 1:] - prices[:, :-1]
    
    # 2. Find companies with positive average growth
    avg_changes = np.mean(changes, axis=1)
    growing = prices[???]
    
    # 3. Calculate total market value per day
    daily_values = np.???(prices * ???)
    
    # 4. Find days when all stocks increased
    all_up_days = np.???(changes > 0, axis=???)
    
    # 5. Sort companies by final day value
    final_values = prices[:, -1] * shares
    rankings = np.???(final_values)
---

# Stock Market Analysis

---

## Content

> 👩‍💻 Practice array operations by analyzing stock market data!

This exercise covers:
- Arithmetic operations (price changes)
- Logical operations (finding trends)
- Statistical operations (calculating averages)
- Sorting operations (ranking stocks)

Example operations:
```python
# Calculate price changes
daily_change = prices[:, 1:] - prices[:, :-1]

# Find positive changes
gains = daily_change > 0

# Calculate company averages
company_avgs = np.mean(prices, axis=1)

# Sort by final prices
final_day = prices[:, -1]
rankings = np.argsort(final_day)
```

> 💡 Remember:
> - Use axis=0 for operations across companies
> - Use axis=1 for operations across days
> - Boolean masks help find specific conditions
