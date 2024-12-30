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

# DateTime Components

---

## Content

Need to analyze patterns by month or day of week? pandas makes it easy to extract datetime components:

```python
import pandas as pd

# System access logs
df = pd.DataFrame({
    'timestamp': pd.date_range(
        '2024-01-15',
        periods=5,
        freq='H'
    ),
    'user': ['alice', 'bob', 'charlie', 'alice', 'bob']
})

# Extract components
df['hour'] = df['timestamp'].dt.hour
df['day'] = df['timestamp'].dt.day_name()
print(df)
```
```
                 timestamp     user  hour      day
0 2024-01-15 00:00:00    alice     0   Monday
1 2024-01-15 01:00:00      bob     1   Monday
2 2024-01-15 02:00:00  charlie     2   Monday
3 2024-01-15 03:00:00    alice     3   Monday
4 2024-01-15 04:00:00      bob     4   Monday
```

More components:
```python
# Time analysis
df['month'] = df['timestamp'].dt.month
df['quarter'] = df['timestamp'].dt.quarter
df['is_weekend'] = df['timestamp'].dt.is_weekend
```

> 💡 Access components using the `.dt` accessor

---

## Practice

Get the month from a datetime column:

```python
df['month'] = df['date'].???.???
```

- `dt`
- `month`
- `get`
- `Month`

---

## Revision

Check if dates are weekends:

```python
df['weekend'] = df['date'].dt.???
```

- `is_weekend`
- `weekend`
- `isweekend`
- `is_Weekend` 