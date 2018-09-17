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
  python.control-structures.3: 10
  python.identify-python-syntax.0: 10
  python.use-iteration-protocol.1: 10


---

# `while` loops

---
## Content

Python's `while` loops repeatedly loop and execute some code *while* a boolean statement evaluates to true.

The standard `while` loop syntax is:

```python
while condition:
    doSomething()
```

While the condition evaluates to *true*, the code inside the loop is executed, as soon as the condition evaluates to *false* the loop is exited and the code immediately following the loop is executed.

For example:

```python
counter = 0
while counter < 5:
    print(counter)
    counter = counter + 1
```
Gives the following output:

```python
0
1
2
3
4
```

---
## Practice

Print the  all numbers in 0..10 _inclusive_:
```python
x = 0
while x < ???:
  ???
  ???
```

* 11
* print(x)
* x++
* 10
* ++x

---
## Revision

What’s the output of the following code snippet:

```python
x = 0
while x < 5:
     x = x + 1
     print(x)
```
???


* `1 2 3 4 5`
* `0 1 2 3 4`
* `1 2 3 4`
* `0 1 2 3 4 5`
