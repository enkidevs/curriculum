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

# Creating DataFrames

---
## Content

Think of a DataFrame as a smart spreadsheet in Python. Here's how to create one:

```python
import pandas as pd

# Create from a dictionary (like a mini-spreadsheet)
data = {
    'name': ['Alice', 'Bob', 'Charlie'],  # First column
    'age': [25, 30, 35],                  # Second column
    'city': ['NY', 'SF', 'LA']           # Third column
}
df = pd.DataFrame(data)
print(df)
```
```
      name  age city
0    Alice   25   NY
1      Bob   30   SF
2  Charlie   35   LA
```

You can also create one from a list of rows:
```python
# Each dictionary is a row
data = [
    {'name': 'Alice', 'age': 25},
    {'name': 'Bob', 'age': 30}
]
df = pd.DataFrame(data)
print(df)
```
```
    name  age
0  Alice   25
1    Bob   30
```

> 💡 Dictionary keys become column names automatically!

---
## Practice

Create a DataFrame from a dictionary:

```python
data = {
    'x': [1, 2],
    'y': [3, 4]
}
df = ???(???)
```

- `pd.DataFrame`
- `data`
- `pd.Series`
- `pd.Array`

---
## Revision

A DataFrame is a ??? data structure with ??? and ???.

- 2-dimensional
- rows
- columns
- 1-dimensional
- cells
- indexes 