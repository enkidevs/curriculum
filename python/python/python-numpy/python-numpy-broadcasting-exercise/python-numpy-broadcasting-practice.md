---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Store Sales Analysis Exercise!
    # You're analyzing sales performance across a retail chain.

    import numpy as np

    # Sales data (stores × products × months)
    sales = np.array([
        # Store 1
        [[100, 120, 140],  # Product A: Jan, Feb, Mar
         [150, 160, 155],  # Product B: Jan, Feb, Mar
         [90, 85, 95]],    # Product C: Jan, Feb, Mar
        # Store 2
        [[80, 85, 95],     # Product A: Jan, Feb, Mar
         [120, 125, 130],  # Product B: Jan, Feb, Mar
         [60, 65, 70]]     # Product C: Jan, Feb, Mar
    ])

    # Your tasks:
    # 1. Apply product prices (broadcast across stores and months)
    prices = np.array([10, 15, 8])  # Price per product
    revenue = ???

    # 2. Apply store-specific discounts (broadcast across products and months)
    store_discounts = np.array([[0.9],    # Store 1: 10% off
                               [0.95]])    # Store 2: 5% off
    discounted = ???

    # 3. Add seasonal adjustments (broadcast across stores and products)
    season_adj = np.array([1.0, 1.1, 1.2])  # Monthly factors
    adjusted = ???

    # 4. Compare with targets (broadcast 3D)
    targets = np.array([[[100]]])  # Base target
    performance = ???

    # 5. Calculate total revenue per store (use correct axis)
    store_totals = np.???(???, axis=???)
---

# Store Sales Analysis

---

## Content

> 👩‍💻 Practice broadcasting with a retail sales analysis!

This exercise covers all broadcasting concepts:

- Broadcasting with different dimensions
- Row vs column operations
- Shape compatibility rules
- Axis operations

Example operations:

```python
# 1D with 3D broadcasting
prices = np.array([10, 15, 20])
sales_3d = np.array([[[100, 110], [120, 130]]])
revenue = sales_3d * prices.reshape(-1, 1)

# Column broadcasting
discounts = np.array([[0.9], [0.8]])  # Shape: (2, 1)
data = np.array([[100, 200], [300, 400]])  # Shape: (2, 2)
result = data * discounts  # Shape: (2, 2)

# Shape checking
a_shape = (2, 3, 4)
b_shape = (3, 4)
compatible = b_shape[-len(b_shape):] == a_shape[-len(b_shape):]
```

> 💡 Remember:
>
> - Check shapes from right to left
> - Use reshape when needed
> - Missing dimensions are added as 1's
> - Use axis parameter for reductions
