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

# Creating Your First Series

---

## Content

A Series is like a smart list that remembers the position of each item. Perfect for tracking things like daily coding streaks:

```python
import pandas as pd

# Track daily lines of code
daily_code = pd.Series([120, 200, 150, 80])
print(daily_code)
```
```
0    120
1    200
2    150
3     80
dtype: int64
```

Want to label your days?
```python
# Track code with day labels
streak = pd.Series(
    [120, 200, 150, 80],
    index=['Monday', 'Tuesday', 'Wednesday', 'Thursday']
)
print(streak['Monday'])  # 120
```

Create from a dictionary:
```python
# Language skill levels
skills = pd.Series({
    'Python': 'Advanced',
    'JavaScript': 'Intermediate',
    'Rust': 'Beginner'
})
```

> 💡 Series automatically align data by index during calculations

---

## Practice

Create a Series with custom labels:

```python
s = pd.Series(
    [1, 2, 3]
    ???
)
```

- `index=['a', 'b', 'c']`
- `custom_index=['a', 'b', 'c']`
- `cindex=['a', 'b', 'c']`
- `index_labels=['a', 'b', 'c']`

---

## Revision

A pandas Series is a ??? array with ???

- one-dimensional
- labels
- two-dimensional
- indexes