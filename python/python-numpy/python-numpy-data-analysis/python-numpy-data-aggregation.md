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

# Data Aggregation

---

## Content

Analyze and summarize data patterns:

```python
# Monthly sales data (rows: products, columns: months)
sales = np.array([
    [5200, 5500, 4900, 5100],  # Product A
    [2100, 2300, 2000, 2200],  # Product B
    [1500, 1400, 1600, 1700]   # Product C
])

# Basic statistics
total_sales = sales.sum()           # Total across all products/months
monthly_sales = sales.sum(axis=0)   # Sum each month (across products)
product_sales = sales.sum(axis=1)   # Sum each product (across months)

print("Best month:", monthly_sales.max())
print("Best product:", product_sales.max())
```

> 💡 axis=0 operates on columns (down), axis=1 on rows (across)!

Advanced aggregations:

```python
# Sales analysis
avg_by_product = sales.mean(axis=1)    # Average per product
growth = sales[:, 1:] - sales[:, :-1]  # Month-to-month change
pct_change = growth / sales[:, :-1] * 100

# Find top performer
best_product = np.argmax(avg_by_product)
print(f"Best product index: {best_product}")

# Calculate running totals
cumulative = np.cumsum(sales, axis=1)  # Running total by month
```

> 💡 Combine aggregations for deeper insights into your data!

---

## Practice

Calculate column means:

```python
means = data.???(???)
```

- `mean`
- `0`
- `average`
- `1`

---

## Revision

For row-wise operations, use axis:

???

- `1`
- `0`
- `row`
- `x`
