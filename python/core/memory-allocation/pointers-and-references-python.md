---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know
aspects:
  - workout
  - deep
standards:
  python.store-manipulate-data.6: 10

links:

  - '[Memory management in Python](http://deeplearning.net/software/theano/tutorial/python-memory-management.html){website}'


---

# Pointers and References

---
## Content

When it comes to variables, one special characteristic of Python stands out: **every data type is an object**. Every *int*, every *string*, every *function*, every user-defined *class* is an object. Consider this example:
```python
def mem_loc(var):
  print(hex(id(var)))
a = 1
b = 1
print(mem_loc(a))
# 0x55a7b5df7080
print(mem_loc(b))
# 0x55a7b5df7080
```
They both **reference** the same place in memory. Strange, right?

In Python, basic types are usually *immutable*. This means you can't change their value without them changing their identity (you can already represent an integer in binary; if you are to modify any bit, its value would also change). The same is true for *strings*, *floats*, *tuples* and *bytes*.

It then comes down to the variables' name: what do they represent? In this case, the `=` operator is better described by **"binding"** than *"assignment"*. In other words, both `a` and `b` reference the same object (as seen above with regard to their memory addresses). Incrementing either of them means binding their name to a new value:
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

---
## Practice

Consider the following snippet. What do you think the memory location of `c+1` is?
```python
def mem_location(var):
  print(hex(id(var)))
c = 10
print(mem_location(c))
# 0x55a7b928f0a0
c = c + 1
print(mem_location(c))
# ???
```


* The address is not in this list.
* `0x55a7b928f0a0 + 0x1`
* `0x55a7b928f0a0 + 0x11`
* `0x55a7b928f0a0`

---
## Revision

Which of the following statements is true regarding the snippet below?
```python
a = 3
b = 3
```
???


* `a` and `b` represent the same object.
* `a` and `b` have the same value, but different memory location.
* `a` and `b` are different objects.
* None is true.

---
## Quiz
### what is the result of the following identity check?

`> python -i`  

```bash
>>> a = 256
>>> b = 256
>>> a is b
???
>>> a = 257
>>> b = 257
>>> a is b
???
```

 ???

* True and False
* True and True
* False and True
* False and False
