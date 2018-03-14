# The `return` statement
author: tommarshall

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

standards:
  py.control-structures.4: 10

---
## Content

Python's `return` statement exits a function and passes back an expression to the function caller. It's used to return the *flow of control* with an *output result* to the function call.

A return statement without any arguments is the same as returning `None.none`, which is a special type in Python which represents 'nothing'.

All Python functions implicitly contain a `return None` statement at the end, unless you've written your own return statement.

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
## Revision

Python’s return statement exits a function and passes back an ??? to the function caller. It’s used to return the ??? with an output result to the function call.

*expression
*flow of control
*result
*sum
*instance
*function instance