# Pointers and References
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

---
## Content

When it comes to variables, one special characteristic of Python stands out: **every data type is an object**. Every *int*, every *string*, every *function*, every user-defined *class* is an object. Consider this example:
```python
def mem_location(var):
  print(hex(id(a)))
a = 1
b = 1
print(mem_loc(a))
# 0x55a7b5df7080
print(mem_loc(b))
# 0x55a7b5df7080
```
They both **reference** the same place in memory. Strange, right?

In Python, basic types are usually *immutable*. Which means you can't change their value without them changing their identity (you can already represent an integer in binary; if you are to modify any bit, its value would also change). The same is true for *strings*, *floats*, *tuples* and *bytes*.

It then comes down to the variables' name: what do they represent? In this case, `=` operator can is better described by **"binding"** than *"assignment"*. In other words, both `a` and `b` reference the same object (as seen above with regard to their memory addresses). Incrementing any one of them means binding their name to a new value:
```python
a = a + 1
b = 3
print(a)
# 2
print(mem_loc(a))
# 0x55a7b5df70a0
print(b)
# 3
print(mem_loc(b))
# 0x55a7b5df70c0
```
