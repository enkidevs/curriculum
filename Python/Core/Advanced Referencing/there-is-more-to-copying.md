# There is more to copying
author: catalin

levels:

  - advanced

  - medium

type: normal

category: must-know

links:

  - '[www.python-course.eu](http://www.python-course.eu/deep_copy.php){website}'

  - '[docs.python.org](https://docs.python.org/3.5/library/copy.html){website}'

---
## Content

An **assignment** only creates a "binding" (an association) between a name and a "target" (object of some type). A  **copy** is sometimes necessary so you can change the value of one object without changing the other (when two names are pointing to the same object).
```python
# Assignment: bind the name y to 
# the list [1, 2].
y = [1, 2 ]
# Create another binding - 
# bind the name x to the same 
# object that y is currently bound to.
x = y 
# x[0 ] is changed too, when y[0 ] is. 
y[0] = 99
print(x[0])
# 99 
```
The copy module has methods to support both shallow and deep copying of objects.

To create a **shallow** copy (construct a new object, but references to the objects found in the original are inserted):
```python
from copy import copy

y = [1, 2 ]
x = copy(y)
# note that x = y.copy() works
y[0] = 99
print(x[0])
# 1

```
To create a **deep** copy (instead of references, multiple copies are used):
```python
from copy import deepcopy
#...
x = deepcopy(y)
```

---
## Revision

Complete the code snippet to create a deep copy:

```
from copy ??? deepcopy
x = ???(y)
```
*`import` 
*`deepcopy` 
*`inherit` 
*`use` 
*`copy` 
*`deep_copy`