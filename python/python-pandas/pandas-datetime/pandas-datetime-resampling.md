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

# DateTime Resampling

---
## Content

Need to analyze data at different time intervals? Resampling helps you change the frequency of your time series:

```python
import pandas as pd

# Hourly website traffic
df = pd.DataFrame({
    'timestamp': pd.date_range(
        '2024-01-15',
        periods=24,
        freq='H'
    ),
    'visitors': range(100, 2500, 100)
})

# Set timestamp as index
df.set_index('timestamp', inplace=True)

# Get daily totals
daily = df.resample('D').sum()
print(daily)
```
```
            visitors
2024-01-15    15000
```

Common frequencies:
```python
# Different time periods
hourly = df.resample('H').mean()  # Hourly average
weekly = df.resample('W').sum()   # Weekly total
monthly = df.resample('M').max()  # Monthly maximum
```

> 💡 Frequency aliases:
- 'D': Daily
- 'W': Weekly
- 'M': Monthly
- 'Q': Quarterly
- 'Y': Yearly

---
## Practice

Resample to daily frequency:

```python
daily = df.???(???).mean()
```

- `resample`
- `'D'`
- `sample`
- `daily`

---
## Revision

Get weekly sums:

```python
weekly = df.resample(???).???()
```

- `'W'`
- `sum`
- `'week'`
- `total` 