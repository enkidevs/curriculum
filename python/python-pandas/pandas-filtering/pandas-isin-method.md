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

# The isin Method

---
## Content

Need to check if values match any item in a list? The `isin` method is perfect for finding matches:

```python
import pandas as pd

df = pd.DataFrame({
    'language': ['Python', 'JavaScript', 'Rust', 'Go'],
    'paradigm': ['Multi', 'Multi', 'Systems', 'Systems'],
    'typing': ['Dynamic', 'Dynamic', 'Static', 'Static']
})

# Find dynamic languages
dynamic = ['Python', 'JavaScript', 'Ruby']
result = df[df['language'].isin(dynamic)]
print(result)
```
```
     language paradigm   typing
0     Python    Multi  Dynamic
1  JavaScript    Multi  Dynamic
```

Mix and match conditions:
```python
# Find static systems languages
systems = df[
    (df['paradigm'] == 'Systems') & 
    (df['typing'].isin(['Static']))
]
```

> 💡 `isin()` is much cleaner than multiple OR conditions

---
## Practice

Filter for specific roles:

```python
roles = ['Dev', 'Manager']
result = df[df['???'].???(roles)]
```

- `role`
- `isin`
- `in`
- `contains`

---
## Revision

Check if values are in a list:

```python
valid = ['A', 'B', 'C']
mask = df['grade'].???(???)
```

- `isin`
- `valid`
- `contains`
- `['A', 'B', 'C']` 