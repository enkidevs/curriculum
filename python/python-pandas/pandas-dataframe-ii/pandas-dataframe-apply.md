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

# Applying Functions

---

## Content

Sometimes you need to transform your data in ways that aren't built into pandas. That's where `apply()` comes in handy:

```python
import pandas as pd

df = pd.DataFrame({
    'username': ['pythonista', 'js_lover', 'rust_fan'],
    'points': [100, 150, 75],
    'level': [1, 2, 1]
})

# Make usernames consistent
df['username'] = df['username'].apply(str.upper)
print(df)
```
```
   username  points  level
0  PYTHONISTA    100      1
1    JS_LOVER    150      2
2    RUST_FAN     75      1
```

Create custom rankings:
```python
def get_rank(points):
    if points >= 150:
        return 'Expert'
    elif points >= 100:
        return 'Advanced'
    return 'Beginner'

# Add rank based on points
df['rank'] = df['points'].apply(get_rank)
```

> 💡 `apply()` works on both Series and DataFrames

---

## Practice

Apply a function to make names lowercase:

```python
df['name'] = df['name'].???(str.???)
```

- `apply`
- `lower`
- `func`
- `lowercase`

---

## Revision

To apply a custom function to a column:

```python
def double(x):
    return x * 2

df['new'] = df['num'].???(???)
```

- `apply`
- `double`
- `map`
- `func` 