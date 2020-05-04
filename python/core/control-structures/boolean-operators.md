---
author: emmab

tags:
  - introduction

type: normal

category: must-know

aspects:
  - introduction

---

# Boolean Operators

---
## Content

There are two keywords in Python that allow us to write more complex boolean conditions.

1. The `and` operator

```python
num = 1
str = 'boolean'

if str == 'boolean' and num == 1:
    print('Success!')
# Success!
```

When using the `and` operator, *all conditions* must evaluation to `True` for the code block to run.

2. The `or` operator

```python
if str == 'boolean' or num > 2:
    print('Success!')
# Success!
```

When using the `or` operator, *at least one of the conditions* must evaluate to `True`.


| Multiple conditions       | Result  |
|---------------------------|---------|
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
str = 'python'

if x == 6 ??? str == 'python':
    print ('yes')
else:
    print('no')

# 'yes'
```

* `and`
* `or`
* `both`
* `plus`

---
## Revision

Complete the code snippet so that at least one of the conditions must evaluate to `True` for the word `'yes'` to be printed:

```python
x = 6
str = 'python'

if x == 6 ??? str == 'java':
    print ('yes')
else:
    print('no')
```

* `or`
* `and`
* `xor`
* `either`