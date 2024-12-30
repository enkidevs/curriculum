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

# DateTime Operations

---

## Content

Need to calculate time differences or shift dates? pandas has you covered:

```python
import pandas as pd

# Project timeline
df = pd.DataFrame({
    'task': ['Research', 'Design', 'Development'],
    'start': pd.to_datetime([
        '2024-01-15',
        '2024-01-20',
        '2024-02-01'
    ]),
    'end': pd.to_datetime([
        '2024-01-19',
        '2024-01-31',
        '2024-02-15'
    ])
})

# Calculate duration
df['duration'] = df['end'] - df['start']
print(df['duration'])
```
```
0    4 days
1   11 days
2   14 days
Name: duration, dtype: timedelta64[ns]
```

Shift dates forward or back:
```python
# Add 2 weeks to end dates
df['new_end'] = df['end'] + pd.Timedelta(weeks=2)

# Find tasks starting next month
next_month = df[
    df['start'] > df['start'].max() + pd.DateOffset(months=1)
]
```

> 💡 Use `Timedelta` for fixed durations and `DateOffset` for calendar-based shifts

---

## Practice

Calculate days between dates:

```python
duration = df['end'] ??? df['start']
```

- `-`
- `minus`
- `sub`
- `subtract`

---

## Revision

Add 3 days to a date:

```python
new_date = date + pd.???(???=3)
```

- `Timedelta`
- `days`
- `DateOffset`
- `add_days` 