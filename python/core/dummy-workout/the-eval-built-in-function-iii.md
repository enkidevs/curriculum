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
# The `eval` Built-in Function (Part 3)

---
## Content

For example, if the `os` module is available for use, the user could delete arbitrary files from the system by using the `rm -rf` unix command, which can be used from the `os` module and evaluated via `eval`. We should be careful whenever we are passing user input to be evaluated, even if indirectly, because of the risk of code injection. Always ensure user input fed into `eval` commands are properly tokenized. It is generally not recommended to pass user input into `eval` at all.

We can restrict the use of the `__builtins__` by putting them in the dictionary, but associated with a `None`, like so:

```python
eval(expression_here,
{'__builtins__': None})
```

However, for reasons outside of the scope of this lesson, this is not always completely secure. For more information on the security risks associated with using `eval` see the 'Eval really is dangerous' link in the Learn More section.  

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
