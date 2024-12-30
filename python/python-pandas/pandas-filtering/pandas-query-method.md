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

# The Query Method

---

## Content

Writing complex filters can get messy. The query method lets you write filters that read almost like plain English:

```python
import pandas as pd

df = pd.DataFrame({
    'repo': ['numpy', 'pandas', 'scipy'],
    'stars': [25000, 35000, 20000],
    'has_docs': [True, True, False]
})

# Find popular repos with documentation
result = df.query('stars > 30000 and has_docs')
print(result)
```
```
     repo  stars  has_docs
1  pandas  35000      True
```

Multiple conditions? No problem:
```python
# Find medium-sized repos without docs
needs_docs = df.query(
    'stars >= 20000 and stars < 30000 and not has_docs'
)
print(needs_docs)
```

> 💡 `query()` makes complex filters readable at a glance

---

## Practice

Filter rows where age is over 25:

```python
result = df.???(???)
```

- `query`
- `'age > 25'`
- `age > 25`
- `filter`

---

## Revision

Filter for people named 'Alice' in NY:

```python
result = df.???(???)
```

- `query`
- `'name == "Alice" and city == "NY"'`
- `name == "Alice" and city == "NY"`
- `filter` 