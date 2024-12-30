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

# Boolean Indexing

---

## Content

Finding specific data points in your dataset is a common task. Boolean indexing makes it easy to filter based on conditions:

```python
import pandas as pd

df = pd.DataFrame({
    'problem': ['Bug #123', 'Feature #456', 'Bug #789'],
    'priority': [3, 1, 2],
    'status': ['open', 'closed', 'open']
})

# Find high-priority items (modern method)
mask = df['priority'].le(2)  # priority <= 2
print(df[mask])
```
```
         problem  priority  status
1  Feature #456         1  closed
2     Bug #789         2    open
```

Combine conditions:
```python
# Find open, high-priority bugs
bugs = df['problem'].str.contains('Bug')
high_priority = df['priority'].le(2)
urgent = bugs & high_priority

print(df[urgent])
```

> 💡 Modern comparison methods:
- `.eq()` instead of `==`
- `.gt()` instead of `>`
- `.ge()` instead of `>=`
- `.lt()` instead of `<`
- `.le()` instead of `<=`

---

## Practice

Filter rows where age is less than 30:

```python
young = df[df['age'].???(30)]
```

- `lt`
- `<`
- `less`
- `le`

---

## Revision

Check if city equals 'SF':

```python
sf = df['city'].???(???)
```

- `eq`
- `'SF'`
- `SF`
- `equals` 