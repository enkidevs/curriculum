---
author: tommarshall

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false
aspects:
  - introduction

standards:
  python.control-structures.4: 10


---

# The `return` statement

---
## Content

Python's `return` statement exits a function and passes back an expression to the function caller. It is used to return the *flow of control* with an *output result* to the function call.

A return statement without any arguments is the same as returning `None.none`, which is a special type in Python which represents 'nothing'.

All Python functions implicitly contain a `return None` statement at the end unless you have written your return statement.

Here is an example using a return statement:

```python
def return_func():
    print ('Print!')
    return 'Return!'

print(return_func())
```
Gives the following output:
```
Print!
Return!
```
---
## Practice

Fill in the following method such that it will return the sum of `x` and `y`:

```python

def sum():
  x = 5
  y = 7
  sum = ???
  ??? ???

```

* x + y
* return
* sum
* sum()
* x
* y

---
## Revision

Python’s return statement exits a function and passes back an ??? to the function caller. It’s used to return the ??? with an output result to the function call.


* expression
* flow of control
* result
* sum
* instance
* function instance
