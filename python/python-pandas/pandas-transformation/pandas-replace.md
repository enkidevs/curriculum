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

# Replacing Values

---

## Content

Need to clean up or standardize values? `replace()` helps you update multiple values at once:

```python
import pandas as pd

# User status data
df = pd.DataFrame({
    'status': ['active', 'ACTIVE', 'inactive', 
               'Active', 'INACTIVE', 'pending'],
    'type': ['user', 'admin', 'user',
             'admin', 'user', 'user']
})

# Standardize status values
df['status'] = df['status'].replace({
    'ACTIVE': 'active',
    'Active': 'active',
    'INACTIVE': 'inactive'
})

# Replace with lists
df['type'] = df['type'].replace(
    ['user', 'admin'],
    ['regular', 'super']
)
```

Use regex patterns:
```python
# Fix typos
text = pd.Series(['colour', 'flavor', 'behaviour'])
fixed = text.replace(
    r'our$',  # Ends with 'our'
    'or',
    regex=True
)
```

> 💡 `replace()` works on both Series and DataFrames

---

## Practice

Replace multiple values:

```python
df['col'] = df['col'].???(
    {'old1': 'new1', 'old2': 'new2'}
)
```

- `replace`
- `map`
- `apply`
- `transform`

---

## Revision

Replace using regex:

```python
result = series.replace(
    ???'pattern',
    'new',
    ???=True
)
```

- `r`
- `regex`
- `re`
- `pattern` 