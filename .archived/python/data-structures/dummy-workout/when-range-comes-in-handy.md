---
author: catalin

levels:

  - basic

  - medium

type: normal

category: must-know

links:

  - >-
    [docs.python.org](https://docs.python.org/3.5/library/stdtypes.html#ranges){website}

---
# When `range` comes in handy

---
## Content

The `range` type is a fundamental immutable **sequence type**, used regularly hand in hand with `for` loops. It represents a sequence of numbers.

The most basic constructor for a `range` takes the `stop` index (not included) as argument:
```python
r = range(5)
# r contains 0, 1, 2, 3, 4 
```
Start index can be specified as well:
```python
r = range (5,10)
# r contains 5, 6, 7, 8, 9
```
Specifying the `step`, the contents of `r[i]` is equal to `start + step*i`:
```python
r = range (0,11,2)
# r contains 0, 2, 4, 6, 8, 10
```

`in` statement can be used for checks:
```python
>>> r = range(0, 11, 2)
>>> 11 in r
False
>>> 8 in r
True
```

Use `range` together with `for` loops:
```python
for i in range(0, 10, 3):
    print(i)
# print 0 3 6 9

```

---
## Practice

What will the following code snippet return? ???

```
r = range(0, 15, 2)
13 in r
2 in r 
```
* False True
* False False
* True True
* True False

---
## Revision

What will the output of the following code snippet be? ???

```
for i in range(0, 12, 4):
    print(i - 1)
```

* -1 3 7
* 0 4 8
* -1 3 7 11
