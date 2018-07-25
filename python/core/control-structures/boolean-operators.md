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

The `and` operator means that two or more conditions must be true in order to progress, and the `or` means that at least one condition must be true for progression.

The `and` operator:

```python
num = 1
str = 'boolean'

if str == 'boolean' and num == 1:
    print('Success!')
```
The `or` operator:

```python
if str == 'boolean' or num > 2:
    print('Success!')
```

---
## Practice

Complete the code snippet so that both conditions must evaluate to true for the word 'yes' to be printed:

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

Complete the code snippet so that at least one of the condition must evaluate to true for the word 'yes' to be printed:

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
