---
author: tommarshall
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Complex set operations


---

## Content

Python has a number of further complex operations which can be carried out on `sets`.

`y.issubset(x)` will return `True` if `y` is a subset of `x`. Instead of writing `issubset`, you can use the abbreviation `<=`, for example:

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

`x.issuperset(y)` returns `True` if `x` is a superset to `y`. Instead of writing `issuperset`, you can use the abbreviation `>=`, for example:

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
z = {'user4'}

x.???(???)
# True
```

- issuperset
- y
- z
- issubset


---

## Revision

Match each set method with its shorthand syntax:

```python
x.issuperset(y)
# ???

x.issubset(y)
# ???
```

- `x >= y`
- `x <= y`
- `x == y`
- `y > x`
 
