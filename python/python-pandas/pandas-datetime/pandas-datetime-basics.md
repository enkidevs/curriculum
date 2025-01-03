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

# DateTime Basics

---
## Content

Working with dates and times is crucial for time-series analysis. Here's how to handle them in pandas:

```python
import pandas as pd

# Create DataFrame with dates
df = pd.DataFrame({
    'date': [
        '2024-01-15',
        '2024-01-16 14:30',
        '01/17/2024'
    ],
    'event': ['deploy', 'test', 'review']
})

# Convert to datetime
df['date'] = pd.to_datetime(df['date'])
print(df)
```
```
                        date   event
0 2024-01-15 00:00:00  deploy
1 2024-01-16 14:30:00    test
2 2024-01-17 00:00:00  review
```

Parse specific formats:
```python
# Custom date format
custom = pd.to_datetime(
    '15-Jan-2024',
    format='%d-%b-%Y'
)

# Create date range
dates = pd.date_range(
    start='2024-01-01',
    periods=7,
    freq='D'  # Daily
)
```

> 💡 pandas automatically handles most common date formats

---
## Practice

Convert string to datetime:

```python
df['date'] = pd.???(
    df['date']
)
```

- `to_datetime`
- `datetime`
- `as_datetime`
- `parse_date`

---
## Revision

Create a range of dates:

```python
dates = pd.???(
    start='2024-01-01',
    ???=7,
    freq='D'
)
```

- `date_range`
- `periods`
- `daterange`
- `count` 