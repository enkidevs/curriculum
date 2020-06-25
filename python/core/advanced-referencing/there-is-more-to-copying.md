---
author: catalin

levels:

  - advanced

  - medium

type: normal

category: must-know

standards:
  python.store-manipulate-data.0: 10
  python.store-manipulate-data.1: 10
  python.store-manipulate-data.6: 10

aspects:

  - workout
  - deep
links:

  - '[www.python-course.eu](http://www.python-course.eu/deep_copy.php){website}'
  - '[docs.python.org](https://docs.python.org/3.5/library/copy.html){website}'


---

# There is more to copying

---
## Content

An **assignment** only creates a "binding" (an association) between a name and a "target" (object of some type). A  **copy** is sometimes necessary so you can change the value of one object without changing the other (when two names are pointing to the same object).
```python
# Assignment: bind the name y to
# the list [1, 2].
y = [1, 2]
# Create another binding -
# bind the name x to the same
# object that y is currently bound to.
x = y
# x[ 0 ] is changed too, when y[ 0 ] is.
y[0] = 99
print(x[0])
# 99
```
The copy module has methods to support both shallow and deep copying of objects.

To create a **shallow** copy:
```python
from copy import copy

y = [1, 2]
x = copy(y)
# note that x = y.copy() also works
y[0] = 99
print(x[0])
# 1
```
The **shallow copy** behaves in the following way:
* initially the new object's reference points to the same memory location as the original reference
* as subobjects of this composite copy are modified, new memory is allocated as needed to store the new values (making it more memory efficient)

To create a **deep** copy (instead of pointing to the same memory location, the new reference points to a completely different memory where an exact copy of an object is stored):
```python
from copy import deepcopy
#...
x = deepcopy(y)
```

---
## Practice

Complete the code snippet to create a deep copy:

```
from copy ??? deepcopy
x = ???(y)
```

* `import`
* `deepcopy`
* `inherit`
* `use`
* `copy`
* `deep_copy`

---
## Revision

Suppose we have object *A* and we want to make a copy of it and reference this copy with *B*.
Why should we use `copy/deepcopy` rather than `B = A` in order to set *B* so that we could change its contents without changing contents of *A*?

???


* `=` doesn't create a copy of an object, it just makes *B* points to the same memory address as *A*, so when *B* is changed, *A* is changed too.
* Python does not support `B = A` as you can not assign object references.
