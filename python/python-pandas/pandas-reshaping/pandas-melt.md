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

# Melting Data

---
## Content

Need to convert wide data into a longer format? Melting helps restructure your data for analysis:

```python
import pandas as pd

# Language usage by quarter
df = pd.DataFrame({
    'developer': ['Alice', 'Bob'],
    'python_q1': [80, 70],
    'python_q2': [85, 75],
    'js_q1': [20, 30],
    'js_q2': [15, 25]
})

# Convert to long format
melted = pd.melt(
    df,
    id_vars=['developer'],
    var_name='quarter',
    value_name='hours'
)
print(melted)
```
```
  developer  quarter  hours
0     Alice  python_q1     80
1       Bob  python_q1     70
2     Alice  python_q2     85
3       Bob  python_q2     75
4     Alice     js_q1     20
5       Bob     js_q1     30
6     Alice     js_q2     15
7       Bob     js_q2     25
```

Split language and quarter:
```python
# Extract language and quarter info
melted[['language', 'q']] = melted['quarter'].str.split('_', expand=True)
```

> 💡 Melting is the opposite of pivoting

---
## Practice

Melt a DataFrame:

```python
pd.???(
    df,
    ???=['id'],
    ???='metric',
    ???='value'
)
```

- `melt`
- `id_vars`
- `var_name`
- `value_name`

---
## Revision

Keep specific columns as identifiers:

```python
pd.melt(
    df,
    ???=['name', 'date']
)
```

- `id_vars`
- `keep`
- `columns`
- `ids` 