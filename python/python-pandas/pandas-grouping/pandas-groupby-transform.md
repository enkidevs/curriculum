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

# GroupBy Transform

---
## Content

Ever wanted to compare each value to its group's average? Transform helps you add these calculations while keeping your original data structure:

```python
import pandas as pd

df = pd.DataFrame({
    'team': ['A', 'A', 'B', 'B'],
    'points': [10, 20, 30, 40],
    'assists': [5, 8, 12, 15]
})

# Add column with team averages
df['team_avg'] = df.groupby('team')['points'].transform('mean')
print(df)
```
```
  team  points  assists  team_avg
0    A      10        5       15
1    A      20        8       15
2    B      30       12       35
3    B      40       15       35
```

Want to see how each player compares to their team?
```python
# Points above/below team average
def diff_from_mean(x):
    return x - x.mean()

df['vs_team_avg'] = df.groupby('team')['points'].transform(diff_from_mean)
```

> 💡 `transform` returns a result matching your original DataFrame's shape

---
## Practice

Calculate group means for each row:

```python
means = df.groupby('type')['value'].???(???)
```

- `transform`
- `'mean'`
- `agg`
- `mean`

---
## Revision

Add column with group sums:

```python
df['group_sum'] = df.???(???)[???].transform('sum')
```

- `groupby`
- `'group'`
- `'value'`
- `group`
- `sum` 