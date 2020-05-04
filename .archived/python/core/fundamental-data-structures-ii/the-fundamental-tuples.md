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

`Tuples` are another one of the fundamental **sequence data types** (alongside `lists` and `ranges`).

Tuples are used to group any number of items into a single compound value, regardless of their type.

They consist of any number of values, **separated by commas**:

```python
my_tuple = "first", 13, "random", 42
```

> Note: although not necessary, it is common practice to enclose the values of a tuple between parentheses:

```py
my_tuple = ("first", 13, "random", 42)
```

To extract elements from the tuple, use the index operator:

```python
print(my_tuple[3])
# 42
```

> Note: `tuples` (as well as `lists` and `ranges`) use **zero-based indexing**. This means that `my_tuple[0]` will represent the first element of your `tuple`. 

On the same topic, the index used must be valid:

```python
print(my_tuple[4])
# IndexError: tuple index out of range
```

Keep in mind that tuples cannot be modified, so trying to reassign an item raises an error:

```python
my_tuple[0] = "ABC"
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