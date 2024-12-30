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

# String Filtering

---

## Content

Working with text data? pandas has powerful string filtering methods to help you find exactly what you're looking for:

```python
import pandas as pd

df = pd.DataFrame({
    'function': ['print()', 'map()', 'filter()', 'reduce()'],
    'type': ['built-in', 'built-in', 'built-in', 'functools'],
    'docs_url': ['docs.py/print', 'docs.py/map', 
                 'docs.py/filter', 'docs.py/reduce']
})

# Find functions with 'i' in the name
has_i = df[df['function'].str.contains('i')]
print(has_i)
```
```
   function     type      docs_url
0   print()  built-in  docs.py/print
2  filter()  built-in  docs.py/filter
```

Need more specific matches?
```python
# Functions starting with 'p'
p_funcs = df[df['function'].str.startswith('p')]

# URLs ending with 'map'
map_docs = df[df['docs_url'].str.endswith('map')]

# Case-insensitive search
built_in = df[df['type'].str.contains('BUILT', case=False)]
```

> 💡 Always use the `.str` accessor for string operations

---

## Practice

Find emails containing 'gmail':

```python
mask = df['email'].???.contains('???')
```

- `str`
- `gmail`
- `string`
- `Gmail`

---

## Revision

Filter names starting with 'A':

```python
result = df[df['name'].str.???(???)]
```

- `startswith`
- `'A'`
- `starts_with`
- `'a'` 