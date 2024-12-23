---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Data Loading](https://numpy.org/doc/stable/reference/routines.io.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Data Loading

---

## Content

Load data into NumPy arrays:

From text files:

```python
# Load CSV file
data = np.loadtxt('data.csv', delimiter=',')
```

> 💡 loadtxt is great for simple text files with numbers!

With headers:

```python
# Load CSV with column names
data = np.genfromtxt('data.csv', 
                     delimiter=',',
                     names=True)
```

Save and load:

```python
# Save array to file
np.save('array.npy', data)

# Load array from file
loaded = np.load('array.npy')
```

---

## Practice

Load a CSV file with headers:

```python
data = np.???(
    'file.csv',
    ???=',',
    ???=True
)
```

- `genfromtxt`
- `delimiter`
- `names`
- `loadtxt`
- `sep`
- `headers`

---

## Revision

To save an array to a binary file:

???

- `np.save('file.npy', arr)`
- `np.savetxt('file.npy', arr)`
- `arr.save('file.npy')`
- `np.write('file.npy', arr)`
