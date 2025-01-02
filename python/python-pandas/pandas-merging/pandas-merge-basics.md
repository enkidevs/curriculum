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

# Merge Basics

---

## Content

Need to combine data from different sources? Merging helps you connect related information:

```python
import pandas as pd

# Developer profiles
devs = pd.DataFrame({
    'dev_id': [1, 2, 3],
    'name': ['Alice', 'Bob', 'Charlie'],
    'role': ['Backend', 'Frontend', 'Data']
})

# Project assignments
projects = pd.DataFrame({
    'project_id': [101, 102, 103],
    'dev_id': [1, 2, 1],  # Alice works on two projects
    'project': ['API', 'Dashboard', 'Database']
})

# Connect developers with their projects
result = pd.merge(
    devs,
    projects,
    on='dev_id'  # Match using dev_id
)
print(result)
```
```
   dev_id    name     role  project_id   project
0       1   Alice  Backend        101       API
1       1   Alice  Backend        103  Database
2       2     Bob Frontend        102 Dashboard
```

> 💡 Like joining tables in [https://app.enki.com/skill/sql](Skill), but in pandas!

---

## Practice

Merge two DataFrames on 'id':

```python
result = pd.???(
    left,
    right,
    ???='id'
)
```

- `merge`
- `on`
- `join`
- `by`

---

## Revision

To merge on different column names:

```python
pd.merge(
    df1,
    df2,
    ???='id',
    ???='user_id'
)
```

- `left_on`
- `right_on`
- `on_left`
- `on_right` 