---
author: tommarshall

levels:

  - beginner

type: normal

category: must-know
aspects:
  - introduction

inAlgoPool: false

standards:
  python.control-structures.0: 10

---

# `break` and `continue` statements

---
## Content

Python's `break` statement is used to terminate the current loop, either a for or a while loop, it then resumes the code execution at the following statement.

For example:

```python
x = 5
while (x > 0):
    print(x)
    x = x - 1
    if (x == 2):
        break

print("Broken away!")
```
This gives the following output:

```python
5
4
3
Broken away!
```
Python's `continue` statement is used to skip the current code block, and to resume execution back at the beginning of the current loop.

For example, it can be used to print only odd numbers:

```python
for x in range(0, 10):
  if (x % 2 == 0):
    continue
  print(x)
```
This gives the following output:

```python
1
3
5
7
9
```

---
## Practice

Which keyword is used to skip the current code block, and to resume execution at the start of the current loop?

???


* `continue`
* `break`
* `restart`

---
## Revision

Which keyword is used to terminate the current loop, then resuming code execution at the following statement?

???


* `break`
* `continue`
* `next`
