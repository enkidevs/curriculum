---
author: tommarshall

tags:

  - introduction

levels:

  - beginner

type: normal

category: must-know
aspects:
  - introduction
inAlgoPool: false

standards:
  python.native-types-operations.0: 10

---

# Boolean Operators

---
## Content

Python uses two keywords to allow complex boolean conditions to be created, `and` and `or`.

The `and` operator means that two or more conditions must be `True` in order to progress, and the `or` means that at least one condition must be `True` for progression.

The `and` operator:

```python
num = 1
str = 'boolean'

if str == 'boolean' and num == 1:
    print('Success!')
# Success!
```

In this case, we check that both `str == 'boolean'` **and** that `num == 1` at the same time. Because these conditions both evaluate to `True`, we print `'Success!'`.

The `or` operator:

```python
if str == 'boolean' or num > 2:
    print('Success!')
# Success!
```

In this case, we check that either `str == 'boolean'` **or** that `num > 2`. Because the `str == 'boolean'` (when using `or`, only one of the conditions must evaluate to `True`) is true, we print `'Success!'`.

---
## Practice

Complete the code snippet so that both conditions must evaluate to True for the word 'yes' to be printed:

```python
x = 6
str = 'python'

if x == 6 ??? str == 'python':
    print ('yes')
else:
    print('no')
```

* `and`
* `or`
* `both`
* `plus`

---
## Revision

Complete the code snippet so that at least one of the condition must evaluate to True for the word 'yes' to be printed:

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
