---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Operations](https://numpy.org/doc/stable/reference/routines.array-manipulation.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Data Grouping

---

## Content

Group and analyze data segments:

```python
# Customer purchase data
# Columns: customer_id, amount, region_id
purchases = np.array([
    [1, 150, 1],
    [2, 200, 2],
    [3, 75, 1],
    [4, 300, 2],
    [5, 225, 1]
])

# Group by region
region_1_mask = purchases[:, 2] == 1
region_2_mask = purchases[:, 2] == 2

region_1_sales = purchases[region_1_mask]
region_2_sales = purchases[region_2_mask]

print("Region 1 average:", region_1_sales[:, 1].mean())
print("Region 2 average:", region_2_sales[:, 1].mean())
```

> 💡 Use boolean masks to create groups from your data!

Segment and analyze:

```python
# Categorize purchases
amounts = purchases[:, 1]
low = amounts < 100
medium = (amounts >= 100) & (amounts < 250)
high = amounts >= 250

# Analyze segments
segments = {
    'low': amounts[low],
    'medium': amounts[medium],
    'high': amounts[high]
}

for name, segment in segments.items():
    if len(segment) > 0:
        print(f"{name.title()} segment:")
        print(f"  Count: {len(segment)}")
        print(f"  Average: ${segment.mean():.2f}")
```

> 💡 Combine masks with & (and) and | (or) for complex grouping!

---

## Practice

Group values above threshold:

```python
data = np.array([1, 5, 2, 6])
high = data[data ??? ???]
```

- `>`
- `5`
- `>=`
- `4`

---

## Revision

To find unique values in array:

???

- `np.unique(arr)`
- `arr.unique()`
- `np.distinct(arr)`
- `arr.distinct()`
