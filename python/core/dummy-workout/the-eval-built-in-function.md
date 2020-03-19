---
author: stefkn

levels:

  - beginner

  - basic

  - medium

type: normal

category: must-know

links:

  - '[Python eval()](https://www.programiz.com/python-programming/methods/built-in/eval)'
  - '[Eval really is dangerous](https://nedbatchelder.com/blog/201206/eval_really_is_dangerous.html)'

---
# The `eval` Built-in Function

---
## Content

The `eval` built-in allows a Python program to evaluate a string of Python code within the program. The code to be executed is passed as an argument to `eval`. The function takes the general syntax:

```python
eval(expression, globals=None, locals=None)
```

The three parameters are:

 - __expression__ - the Python code to be evaluated, as a string. This is mandatory.
 - __globals__ - a dictionary, used to determine which global variables the code in the expression can access. This is optional.
 - __locals__ - a mapping object, also usually a dictionary, used to determine which local variables the code in the expression can access. This is optional.

If no global or local parameters are passed to `eval`, the expression is evaluated in the current scope, which means it has access to the same local and global variables as a line of code executed on the same line.[1] If no local dictionary is provided, `eval` reverts to using the global dictionary as the local one as well. If an empty dictionary is provided as the global dictionary, the only methods available to the expression will be the `__builtins__`, and nothing else, regardless of what is imported outside of the `eval`.

The return value of `eval` is the is the result returned by evaluating the expression given.


---
## Practice

Fill in the blanks in the following code to evaluate the expression using `eval`, but restricting the use of `__builtins__` and `sqrt` and allowing the use of `pow`.

```
from math import *
print(???('pow(9, 3)',
{'sqrt': ???, 
  'pow': ???, '???': None}))
```

* eval
* None
* pow
* __builtins__
* math.sqrt()
* squareRoot()

---
## Revision

Fill in the blanks to evaluate the expression, but rename the `gcd` function to `greatestCommonDivisor`.

```
from math import *
print(???(???(9, 3)',
{'???': ???}))
```

* eval
* greatestCommonDivisor
* greatestCommonDivisor
* gcd
* math.gcd
* sqrt

---
## Footnotes

[1:Scope]
*To check the available variables and methods in a section of code, use the command `print(eval('dir()'))`, which lists them to the console. We can also see the global and local dictionary currently available using the `globals()` and `locals()` built-in methods, respectively.*
 
