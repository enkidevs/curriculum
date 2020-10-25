---
author: emmab
tags:
  - introduction
type: normal
category: must-know

---

# Boolean Operators

---

## Content

There are two keywords in Python that allow us to write more complex boolean conditions.

1. The `and` operator

```python
num = 1
string = 'foobar'

if string == 'foobar' and num == 1:
    print('Success!')
# Success!
```

When using the `and` operator, *all conditions* must evaluate to `True` for the code block to run.

2. The `or` operator

```python
if string == 'foobar' or num > 2:
    print('Success!')
# Success!
```

When using the `or` operator, *at least one of the conditions* must evaluate to `True`.

| Multiple conditions       | Result  |
| ------------------------- | ------- |
| `True and True`           | `True`  |
| `True and False`          | `False` |
| `True and True and False` | `False` |
| `True or False`           | `True`  |
| `False or False`          | `False` |
| `False or False or True`  | `True`  |


---

## Practice

Complete the code snippet so that both conditions must evaluate to `True` for the word `'yes'` to be printed:

```python
x = 6
string = 'python'

if x == 6 ??? string == 'python':
    print ('yes')
else:
    print('no')

# 'yes'
```

- `and`
- `both`
- `plus`

---

## Revision

Complete the code snippet so that at least one of the conditions must evaluate to `True` for the word `'yes'` to be printed:

```python
x = 6
string = 'python'

if x == 6 ??? string == 'java':
    print ('yes')
else:
    print('no')
```

- `or`
- `and`
- `xor`
- `either`
