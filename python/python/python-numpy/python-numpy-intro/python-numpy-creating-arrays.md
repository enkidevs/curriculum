---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Creation](https://numpy.org/doc/stable/user/basics.creation.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Creating NumPy Arrays

---

## Content

Let's learn how to create NumPy arrays! First, import NumPy:

```python
import numpy as np
```

Create an array from a list:

```python
numbers = np.array([1, 2, 3, 4])
# array([1, 2, 3, 4])
```

> 🔍 Arrays can only contain elements of the same type!

Create special arrays:

- All zeros:

```python
zeros = np.zeros(3)
# array([0., 0., 0.])
```

- Sequential numbers:

```python
sequence = np.arange(4)
# array([0, 1, 2, 3])
```

---

## Practice

Fill in the gaps to create an array of three zeros:

```python
import numpy as ???
zeros = np.???(???)
# array([0., 0., 0.])
```

- `np`
- `zeros`
- `3`
- `zero`
- `array`
- `[0, 0, 0]`

---

## Revision

Which creates an array from a list?

???

- `np.array([1, 2, 3])`
- `np.create([1, 2, 3])`
- `np.list([1, 2, 3])`
- `np.new([1, 2, 3])`
