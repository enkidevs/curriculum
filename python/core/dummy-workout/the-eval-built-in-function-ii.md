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
# The `eval` Built-in Function (Part 2)

---
## Content

Consider the following examples. First, a simple example of evaluation, without providing any dictionaries as arguments.

```python
number = 2
print(eval('number + 1'))
# Result: 3
```

Notice the use of the variable declared before the `eval` function inside the expression. Next, we can experiment with passing different dictionaries to `eval` and observing the result.

```python
# Passing no dictionaries, therefore
# current scope.
from math import *
print(eval('dir()'))
# Result: ['__builtins__', 'acos',
# 'acosh', 'asin', 'asinh', 'atan',
#  ... , 'trunc'] (truncated)


# Passing an empty dictionary
# as the global dictionary...
print(eval('dir()', {}))
# Result: ['__builtins__']


# Passing a dictionary with a subset of
# available functions from the
# math module.
from math import *
print(eval('dir()',
          {'sqrt': sqrt, 'pow': pow}))
# Result: ['__builtins__', 'pow', 'sqrt']
```

In the first example, the result is a long list of available functions since all the functions available in the current scope are listed. In the next example, we pass an empty dictionary, so the only available functions are the `__builtins__`. In the final example, we only pass two functions in the dictionary, `sqrt`, and `pow`, and therefore they are the only functions available to the expression, along with the `__builtins__`. We can also rename the functions the expressions can use, like so:

```python
from math import *
print(eval('squareRoot(9)',
{'squareRoot': sqrt, 'pow': pow}))
# Result: 3
```

Finally, it is important to be aware of __the security risks associated with `eval`__. If you pass user input to an `eval` and have not restricted the functions available to the expression, it is possible that the user could compromise system security or integrity.

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
