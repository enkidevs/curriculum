# `while` loops
author: tommarshall

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

standards:
  py.control-structures.3: 10
  py.identify-python-syntax.0: 10


---
## Content

Python's `while` loops repeatedly loop and execute some code *whilst* a boolean statements evaluates to true.

The standard `while` loop syntax is:

```python
while condition:
    doSomething()
```

Whilst the condition evaluates to *true*, the code inside the loop is executed, as soon as the condition evaluates to *false* the loop is exited and the code immediately following the loop is executed.

For example:

```python
counter = 0
while (counter < 5):
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
## Revision

What’s the output of the following code snippet:

```python
x = 0
while (x < 5):
     x = x + 1
     print(x)
```
???

*`1 2 3 4 5`
*`0 1 2 3 4`
*`1 2 3 4`
*`0 1 2 3 4 5`
