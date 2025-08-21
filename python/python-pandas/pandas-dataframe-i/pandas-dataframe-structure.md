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

# DataFrame Structure

---
## Content

Let's explore DataFrame structure:

```python
import pandas as pd

df = pd.DataFrame({
    'name': ['Ada Lovelace', 'Alan Turing'],
    'favorite_language': ['Python', 'JavaScript'],
    'bugs_fixed': [42, 37]
})

# Let's see what we've got
print(df.info())
```
```
<class 'pandas.core.frame.DataFrame'>
RangeIndex: 2 entries, 0 to 1
Data columns (total 3 columns):
 #   Column            Non-Null Count  Dtype 
---  ------            --------------  ----- 
 0   name              2 non-null      object
 1   favorite_language 2 non-null      object
 2   bugs_fixed        2 non-null      int64 
```

Check out the key attributes:
```python
print(df.shape)      # (2, 3) - 2 coders, 3 pieces of info
print(df.columns)    # What we know about each coder
print(df.index)      # How we count our coders (0, 1)
```

> 💡 `shape` always shows (rows, columns) - think "we have 2 coders who each have 3 attributes"

---
## Practice

Get the number of rows and columns:

```python
dimensions = df.???
```

- `shape`
- `size`
- `length`
- `dim`

---
## Revision

To see column names, use:

```python
names = df.???
```

- `columns`
- `headers`
- `names`
- `cols` 