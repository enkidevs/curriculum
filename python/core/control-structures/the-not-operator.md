---
author: tommarshall

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false


standards:
  py.native-types-operations.0: 10

---

# The `not` operator

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
## Practice

Check if `x` does not exist in the `nums` sequnece:

```python
x = 10
nums = [1,2,3,4]

??? x ??? in nums:
    print(False)
```

* if
* not
* is
* while
* for

---
## Revision

What does the following code snippet return:

```python
print(True == (not True))
```
???


* False
* True
* Error
