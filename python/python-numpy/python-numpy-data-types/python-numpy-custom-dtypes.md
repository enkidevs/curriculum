---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Structured Arrays](https://numpy.org/doc/stable/user/basics.rec.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Custom Data Types

---

## Content

Create structured arrays for complex data:

```python
# Define data structure for sales records
sales_dt = np.dtype([
    ('date', 'M8[D]'),        # DateTime (days)
    ('product_id', 'i4'),     # 32-bit integer
    ('quantity', 'i2'),       # 16-bit integer
    ('price', 'f4'),          # 32-bit float
    ('is_online', '?')        # boolean
])

# Create sales records
sales = np.array([
    ('2024-01-15', 1001, 5, 29.99, True),
    ('2024-01-15', 1002, 2, 49.99, False),
    ('2024-01-16', 1001, 3, 29.99, True)
], dtype=sales_dt)
```

> 💡 Structured arrays are like database tables in memory!

Access fields and analyze:

```python
# Get specific fields
print(sales['product_id'])    # [1001 1002 1001]
print(sales['price'])         # [29.99 49.99 29.99]

# Calculate total sales
total = np.sum(sales['quantity'] * sales['price'])
print(f"Total sales: ${total:.2f}")  # $289.93

# Filter online sales
online_sales = sales[sales['is_online']]
print(f"Online orders: {len(online_sales)}")  # 2
```

> 💡 Use field names like dictionary keys to access columns!

---

## Practice

Create a structured array with name and age:

```python
dt = np.dtype([
    ('???', '???'),  # Name as string
    ('???', '???')   # Age as integer
])
```

- `name`
- `U10`
- `age`
- `i4`

---

## Revision

Access the 'score' field of a structured array:

```python
data = np.array([('Amy', 88.5)], 
    dtype=[('name', 'U10'), ('score', 'f4')])
score = data???['???']
```

- `[0]`
- `score`
- `get`
- `scores`
