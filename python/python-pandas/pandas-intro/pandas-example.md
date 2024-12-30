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

# Pandas Example

---

## Content

Here's how to get started with pandas:

```python
# Import the pandas library
import pandas as pd 
# Naming it pd is a standard convention

# create a simple dataset
data = {
  'Name': ['Alice', 'Bob', 'Charlie'],
  'Age': [25, 30, 35],
  'City': ['New York', 'Paris', 'Tokyo']
}

# create a DataFrame from the data
df = pd.DataFrame(data)

print(df)
```

This will output:

```
   Name  Age      City
0  Alice   25  New York
1    Bob   30    Paris
2  Charlie   35    Tokyo
```

---

## Practice

To import pandas and create an alias `pd`, you would write:

```python
import ??? as ???
```

- `pandas`
- `pd`

---

## Revision

Which pandas object would you use to store a table of data with rows and columns?

???

- `DataFrame`
- `Series`
- `Panel`
- `Panel4D`