# Complex `set` operations
author: tommarshall

levels:

  - advanced

type: normal

inAlgoPool: false

category: must-know

standards:
  py.native-types-operations.5: 10

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
