---
author: tommarshall

levels:

  - beginner

type: normal

category: tip

inAlgoPool: false


standards:
  py.native-types-operations.0: 10

links:

  - '[Use cases](http://kracekumar.com/post/22512660850/python-in-operator-use-cases){website}'


---

# The `in` operator

---
## Content

Python's `in` operator is a *membership operator* and is used to check whether an object exists inside an iterable object container.

It evaluates to true if it finds the specified variable in the sequence, and false if it doesn't.

An example of an iterable object container is a list. Here's an example of the `in` operator in use searching for a value in a list:

```python
x = 5
nums = [1, 2, 3, 4]

# membership operator check using in
if x in nums:
    print('Found!')
else:
    print('Not found!')


```

---
## Revision

The `in` operator evaluates to ??? if it finds the specified variable in the ???.


* true
* sequence
* false
* list
* map
