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

# Concatenating DataFrames

---
## Content

Sometimes you need to stack data vertically or horizontally. Concatenation makes this easy:

```python
import pandas as pd

# Q1 bug reports
q1_bugs = pd.DataFrame({
    'bug_id': [1, 2],
    'severity': ['high', 'medium']
})

# Q2 bug reports
q2_bugs = pd.DataFrame({
    'bug_id': [3, 4],
    'severity': ['low', 'high']
})

# Stack quarters vertically
all_bugs = pd.concat([q1_bugs, q2_bugs])
print(all_bugs)
```
```
   bug_id severity
0       1     high
1       2   medium
0       3      low
1       4     high
```

Want to add new columns?
```python
# Bug details
details = pd.DataFrame({
    'description': ['login', 'display', 'api', 'memory']
})

# Add details horizontally
result = pd.concat([all_bugs, details], axis=1)
print(result)
```

> 💡 Use `ignore_index=True` to reset row numbers

---
## Practice

Stack DataFrames vertically:

```python
result = pd.???(
    [df1, df2],
    ???=True
)
```

- `concat`
- `ignore_index`
- `append`
- `reset_index`

---
## Revision

Stack DataFrames horizontally:

```python
result = pd.concat(
    [df1, df2],
    ???=???
)
```

- `axis`
- `1`
- `direction`
- `horizontal` 