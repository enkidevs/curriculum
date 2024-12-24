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

# Broadcasting Dimensions

---

## Content

Broadcasting works with higher dimensions:

```python
# Monthly sales data (3D array)
# Shape: (2 quarters, 3 months, 4 products)
sales = np.array([
    # Q1
    [[100, 120, 140, 110],  # January
     [105, 125, 135, 115],  # February
     [110, 130, 145, 120]], # March
    # Q2
    [[115, 135, 150, 125],  # April
     [120, 140, 155, 130],  # May
     [125, 145, 160, 135]]  # June
])

# Add product-specific bonus
bonus = np.array([10, 20, 15, 5])  # One bonus per product
# Broadcasting: repeats bonus for each month and quarter
adjusted = sales + bonus
```

> 💡 NumPy matches dimensions from right to left!

Shape compatibility rules:

```python
# Temperature readings (2 cities, 3 days)
temps = np.array([[20, 22, 21],    # City 1
                  [25, 24, 26]])   # City 2

# Daily adjustments
adj = np.array([1, -2, 0])         # Shape: (3,)
# Broadcasting works: (2,3) + (3,)
result = temps + adj

# City-specific offsets
city_adj = np.array([[2],          # Shape: (2,1)
                     [3]])
# Broadcasting works: (2,3) + (2,1)
result = temps + city_adj
```

> 💡 For broadcasting to work, array dimensions must either:
> - Be exactly equal (e.g. 3 matches 3)
> - Be 1 in one array (e.g. 1 matches 3)
> - Be missing from the smaller array (added from the right)

---

## Practice

What shape is added to a (2,3) array to make it (4,2,3)?

???

- (4,1,1)
- (4,2,3)
- (1,2,3)
- (4,2)

---

## Revision

Missing dimensions are added from:

???

- Left
- Right
- Both sides
- Middle
