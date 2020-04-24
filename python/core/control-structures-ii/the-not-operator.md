---
author: tommarshall

tags:

  - introduction

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false
aspects:
  - introduction

standards:
  python.native-types-operations.0: 10

---

# The `not` operator

---
## Content

Using Python's `not` operator before a boolean expression negates the expression. In other words, if the original expression evaluates to true, placing a `not` in front of it means the phrase as a whole will evaluate to false, and vice versa.

For example:

```python
not (x > y) # is True if
(x > y)     # is False
```

```python
print(not False)
```
Prints `True`, because `True` is the negation of `False`.
```python
print(True == (not True))
```
Prints `False`, because (`not` `True`) evaluates to `False`, and True does not equal False

---
## Practice

Complete this expression to check that `x` does not appear in the list of `nums`:

```python
x = 10
nums = [1,2,3,4]

??? x ??? in nums:
    print('x is not in this list!')
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
