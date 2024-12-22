---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Python coding playground
    # You're analyzing sales data for an online store!
    # Tasks:
    # - Find top 3 selling products
    # - Get products with price > $50
    # - Select weekend sales data
    # - Compare morning vs evening sales

    # Type your code here:
    import numpy as np

    # Sales data (units sold per product per day)
    sales = np.array([
        [10, 5, 8, 15, 20, 25, 30],  # Product 1
        [8, 12, 15, 10, 5, 8, 12],   # Product 2
        [20, 25, 18, 22, 15, 20, 28], # Product 3
        [5, 8, 12, 15, 10, 5, 8]     # Product 4
    ])

    prices = np.array([45, 65, 35, 75])  # Price per product

    # Your analysis code:
---

# Sales Data Analysis

---

## Content

> 👩‍💻 Your task is to analyze sales data using different indexing methods!

To solve this, try using:

- Boolean indexing to find expensive products
- Fancy indexing to get top sellers
- Slicing to analyze specific time periods
- Array indexing to compare periods

Give it a try, and feel free to experiment!

> 💡 Remember you can combine different indexing methods to get exactly what you
> need!

If you're stuck, try breaking it down:

1. Find high-value products
2. Analyze daily patterns
3. Compare time periods
4. Identify best sellers
