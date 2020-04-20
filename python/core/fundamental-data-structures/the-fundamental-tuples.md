---
author: catalin

tags:
  - introduction

type: normal

category: must-know

aspects:
  - introduction

links:
  - '[Tuples and Sequences](https://docs.python.org/3.5/tutorial/datastructures.html#tuples-and-sequences){website}'

---

# The Fundamental `tuple`

---
## Content

`Tuples` are another one of the three currently implemented **sequence data types** (alongside with `lists` and `ranges`).

Tuples are used to group any number of items into a single compound value regardless of their type (including nested tuples):
```python
myTuple = ("first", 13, "random", 42)
```

Extract elements from the tuple using the index operator:
```python
print(myTuple[3])
# 42
```

Note that `tuples` (as well as `lists` and `ranges`) use **zero-based indexing**. This means that `myTuple[0]` will represent the first element of your `tuple`. 

On the same topic, the index used must be valid:
```python
print(myTuple[4])
# IndexError: tuple index out of range
```

Keep in mind that tuples cannot be modified, so trying to reassign an item raises an error:
```python
myTuple[0] = "ABC"
# TypeError: ...
```

---
## Practice

Which of the following properly declares a new tuple called `ex_tuple`?

```python
# Tuple 1
new Tuple ex_tuple = (
  "Enki",
  1, 
  "Python", 
  2
)

# Tuple 2
ex_tuple = (
  "Enki",
  1,
  "Python",
  2
)

# Tuple 3
ex_tuple = [
  "Enki",
  1,
  "Python",
  2
]
```

???

* `Tuple 2`
* `Tuple 3`
* `Tuple 1`

---
## Revision

Extract the **third element** from this tuple:

```py
aTuple = ('a', 1, 'b', 2)
thirdElement = ???[???];

print(thirdElement)
# 'b'
```

* aTuple
* 2
* 3
* tuple