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

# Working with Rows

---

## Content

When analyzing data, you often need to look at specific entries or add new ones. 

Here's how to work with DataFrame rows:

```python
import pandas as pd

df = pd.DataFrame({
    'game': ['Minecraft', 'Tetris', 'Mario'],
    'copies_sold': [238, 170, 58],  # millions
    'release_year': [2011, 1984, 1985]
})

# Get Minecraft's stats
first = df.loc[0]
print(first)
```
```
name    Alice
age        25
Name: 0, dtype: object
```

View first/last rows:
```python
print(df.head(2))  # First 2 rows
print(df.tail(1))  # Last row
```

> 💡 `head()` and `tail()` default to 5 rows if no number is specified

Add a new row:
```python
df.loc[3] = ['David', 40]
```

---

## Practice

View the first 3 rows of a DataFrame:

```python
rows = df.???(???)
```

- `head`
- `3`
- `first`
- `top`

---

## Revision

To access a specific row by index:

```python
row = df.???[2]
```

- `loc`
- `iloc`
- `row`
- `get` 