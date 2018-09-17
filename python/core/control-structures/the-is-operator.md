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

links:

  - '[is operator](http://stackoverflow.com/questions/13650293/understanding-pythons-is-operator){website}'


---

# The `is` operator

---
## Content

Python's `is` operator is used to match instances of variables, instead of matching the values of variables like the `==` operator.

`is` will evaluate to true if the variables on either side of the operator point to the same object, not just the same value, and will evaluate to false otherwise.

For example:

```python
str = 'python'
istr = str

istr is str
# prints true
```
Whereas:

```python
numsX = [1, 2, 3]
numsY = [1, 2, 3]

numsX is numsY
# prints false

numsY is numsX
# prints false
```

---
## Practice

The `is` operator is used to match ??? instead of variables.


* instances
* objects
* lists

---
## Revision

What does the following code snippet return:

```python
numsX = [2, 4, 6]
numsY = [2, 4, 6]

numsX is numsY
```
???

* False
* True
* Error
