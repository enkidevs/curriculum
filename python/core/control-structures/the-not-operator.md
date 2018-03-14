# The `not` operator
author: tommarshall

levels:

  - beginner

type: normal

inAlgoPool: false

standards:
  py.native-types-operations.0: 10

category: must-know

---
## Content

Using Python's `not` operator pre boolean expression will simply negate it.

Therefore:

```python
not (x > y) # is True if
(x > y)     # is False
```

For example:

```python
print(not False)
# prints True

print(True == (not True))
# prints False
```

---
## Revision

What does the following code snippet return:

```python
print(True == (not True))
```
???

*False
*True
*Error