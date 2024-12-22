---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Structured Arrays](https://numpy.org/doc/stable/user/basics.rec.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Custom Data Types

---

## Content

Create structured arrays with custom types:

Define a custom type:

```python
dt = np.dtype([
    ('name', 'U10'),     # Unicode string, max 10 chars
    ('age', 'i4'),       # 32-bit integer
    ('score', 'f4')      # 32-bit float
])
```

> 💡 Custom types let you store different types of data together!

Create structured array:

```python
students = np.array([
    ('Amy', 20, 88.5),
    ('Bob', 21, 75.0)
], dtype=dt)

print(students['name'])  # ['Amy' 'Bob']
print(students['age'])   # [20 21]
```

Access fields:

```python
first = students[0]      # Get first record
print(first['score'])    # 88.5
```

---

## Practice

Create a structured array with name and age:

```python
dt = np.dtype([
    ('???', '???'),  # Name as string
    ('???', '???')   # Age as integer
])
```

- `name`
- `U10`
- `age`
- `i4`

---

## Revision

Access the 'score' field of a structured array:

```python
data = np.array([('Amy', 88.5)], 
    dtype=[('name', 'U10'), ('score', 'f4')])
score = data???['???']
```

- `[0]`
- `score`
- `get`
- `scores`
