---
author: tommarshall

levels:

  - advanced

type: normal

category: must-know

inAlgoPool: false

standards:
  python.native-types-operations.5: 10

aspects:
  - introduction
  - workout
  - deep
---

# Complex `set` operations

---
## Content

Python has a number of further complex operations which can be carried out on `sets`.

`issubset(x)` will return true if y is a subset of x. Instead of writing `issubset` you can use the abbreviation `<=`, for example:

```python
x = {"a", "b", "c", "d"}
y = {"a", "c"}

y.issubset(x)
# True

x.issubset(y)
# False

y <= x
# True
```

`issuperset()` returns true if x is a superset to y. Instead of writing `issuperset` you can use the abbreviation `>=`, for example:

```python
x = {"a", "b", "c", "d"}
y = {"a", "c"}

x.issuperset(y)
# True

x >= y
# True
```

---
## Practice

Complete the following code snippet such that it will have the desired output (marked in the comment):

```python

x = {'user1', 'user2', 'user3'}
y = {'user3'}

x.???(???)
```
* issuperset
* y
* x
* issubset

---
## Revision

Match each set method with its shorthand syntax:
```python
x.issuperset(y)
# ???

x.issubset(y)
# ???
```

* `x >= y`
* `x <= y`
* `x == y`
* `y > x`
