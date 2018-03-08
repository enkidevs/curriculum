---
author: catalin

levels:

  - basic

  - medium

type: normal

category: how to


links:

  - '[docs.python.org](https://docs.python.org/3.5/tutorial/datastructures.html#list-comprehensions){website}'

{}

---
## Content
# List comprehension

**List comprehensions** are a concise way of creating lists, in a somewhat declarative style.

One common application is to create new lists whose items are the result of operations applied to other sequences or iterables, or in other words, functions of other iterables (item for item). 

The syntax for this is to include between **square brackets** (`[] `) an expression followed by at least one `for` clause.

Create a list of squares:
```python
squares = [x ** 2 for x in \
range(6)]
print(squares)
# output:
#[0, 1, 4, 9, 16, 25]
```

Expressions that consist of `tuples` must be parenthesized:
```python
nr_square = [(x, x ** 2) \
for x in range(4)]
# nr_square [(0, 0), (1, 1),
# (2, 4), (3, 9)]
```
Note that `if` clauses are also accepted:
```python
a = [x ** 2 for x in range(20) \
if x % 5 == 0]
# a = [0, 25, 100, 225]

b = [ i for i in range(10) \
if i * i < 50 ]
# b = [0, 1, 2, 3, 4, 5, 6, 7]

```
List comprehensions can contain complex expressions and nested functions:

```python
from math import pi

b = [str(round(pi, i)) \
for i in range(1, 5)]
# b = ['3.1', '3.14', '3.142',
# '3.1416']
```

What makes it more powerful is that even the if clause can contain calls to functions that become part of the overall boolean expression. Simple example:

```python
>>> def square(n): return n * n
...
>>> square(5)
25
>>> square(6)
36
>>> a = [ i for i in range(10) \
if square(i) < 50 ]
>>> a
[0, 1, 2, 3, 4, 5, 6, 7]

```

