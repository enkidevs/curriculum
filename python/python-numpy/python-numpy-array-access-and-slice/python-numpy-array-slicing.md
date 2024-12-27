---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Slicing](https://numpy.org/doc/stable/user/basics.indexing.html#slicing-and-striding){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Array Slicing

---

## Content

Slice arrays to select ranges of elements:

```python
# Daily temperatures for a week
temps = np.array([25, 28, 23, 24, 27, 26, 22])

# Get workday temperatures (first 5 days)
workdays = temps[0:5]     # [25, 28, 23, 24, 27]

# Get weekend temperatures (last 2 days)
weekend = temps[-2:]      # [26, 22]

# Get every other day
alternate = temps[::2]    # [25, 23, 27, 22]
```

> 💡 Slice syntax: `array[start:stop:step]`, stop index not included!

Remember: If you omit `start`, it defaults to the beginning. If you omit `stop`, it goes to the end.

---

## Practice

Given this array of daily temperatures:
```python
temps = np.array([18, 20, 23, 25, 24, 22, 19])
```

Complete the following:
```python
# Get temperatures from day 2 to 5
middle_temps = ???

# Get every other temperature starting from the beginning
alternate_temps = ???
```

- `temps[1:5]`
- `temps[::2]`
- `temps[1:6:2]`
- `temps[0:6:2]`

---

## Revision

What will this slice return?
```python
data = np.array([1, 2, 3, 4, 5, 6])
print(data[1:-1:2])
```

???

- `[2, 4]`
- `[2, 3, 4, 5]`
- `[1, 3, 5]`
- `[2, 4, 6]`
