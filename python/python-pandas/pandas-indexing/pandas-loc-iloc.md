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

# Label vs Position Based Access

---
## Content

When working with data, you often need to access specific rows or sections. pandas gives you two powerful ways to do this:

```python
import pandas as pd

df = pd.DataFrame({
    'game': ['Tetris', 'Pacman', 'Mario'],
    'score': [999999, 573580, 502460]
}, index=['classic', 'arcade', 'platform'])

# Get high score by game type
print(df.loc['classic'])  # Using the label 'classic'
```
```
game     Tetris
score    999999
Name: classic, dtype: object
```

Need specific rows and columns?
```python
# Get game names for classic and arcade titles
print(df.loc['classic':'arcade', 'game'])
```
```
classic    Tetris
arcade    Pacman
Name: game, dtype: object
```

Or use positions:
```python
# First row, using position 0
print(df.iloc[0])
```

> 💡 Think of `loc` as "location by label" and `iloc` as "integer location"

---
## Practice

Get first row using position-based indexing:

```python
row = df.???[???]
```

- `iloc`
- `0`
- `loc`
- `1`

---
## Revision

Select rows with labels 'a' and 'b':

```python
rows = df.???['???':'???']
```

- `loc`
- `a`
- `b`
- `iloc`
- `0`
- `1` 