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

> 🔍 Python lists can mix types, but NumPy arrays convert everything to one type
> for faster calculations.

Create special arrays:

```python
# Create array of zeros (useful for initializing data)
zeros = np.zeros(3)      # array([0., 0., 0.])

# Create array of ones (useful for masks)
ones = np.ones(3)        # array([1., 1., 1.])

# Create sequence (useful for indices or plotting)
sequence = np.arange(4)  # array([0, 1, 2, 3])
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
