---
author: tommarshall

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false

aspects:
  - introduction

standards:
  python.control-structures.2: 10
  python.identify-python-syntax.0: 10
  python.use-iteration-protocol.0: 10

links:

  - '[Control flow in Python](https://docs.python.org/2/tutorial/controlflow.html){website}'

---

# `for` loops

---
## Content

`for` loops are used in most programming languages to iterate over a defined sequence.

The standard Python `for` loop syntax is:
```python
for iterating_num in sequence:
    doSomething()
```

An example `for` loop:

```python
for letter in 'Enki':
    print('Letter: ', letter)
```
Gives output:
```python
Letter:  E
Letter:  n
Letter:  k
Letter:  i
```
In the following example, `x` acts as the iterator and is incremented with each loop:

```python
nums = [1, 2, 3]

for x in nums:
    print(x)
```
Gives output:
```python
1
2
3
```

---
## Practice

What’s the output of the following code snippet:

```
for x in [0, 1, 2, 3, 4, 5]:
    if (x % 2 == 0):
        print(x)
```
???


* `0 2 4`
* `0 1 2 3 4 5`
* `2 4`
* `1 3 5`

---
## Revision

What’s the output of the following code snippet:

```
for letter in 'Python':
    print(letter)
```
???


* `P y t h o n`
* `letter`
* `null`
* `error`
