---
author: stefkn
levels:
  - beginner
  - basic
  - medium
type: normal
category: must-know
links:
  - >-
    [Python
    eval()](https://www.programiz.com/python-programming/methods/built-in/eval){website}
  - >-
    [Eval really is
    dangerous](https://nedbatchelder.com/blog/201206/eval_really_is_dangerous.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# The eval Function


---

## Content

The `eval` built-in allows a Python program to evaluate a string of Python code within the program. The code to be executed is passed as an argument to `eval`. The function takes the general syntax:

```python
eval(expression, globals=None, locals=None)
```

The three parameters are:

- **expression** - the Python code to be evaluated, as a string. This is mandatory.
- **globals** - a dictionary, used to determine which global variables the code in the expression can access. This is optional.
- **locals** - a mapping object, also usually a dictionary, used to determine which local variables the code in the expression can access. This is optional.

If no global or local parameters are passed to `eval`, the expression is evaluated in the current scope, which means it has access to the same local and global variables as a line of code executed on the same line.[1] If no local dictionary is provided, `eval` reverts to using the global dictionary as the local one as well. If an empty dictionary is provided as the global dictionary, the only methods available to the expression will be the `__builtins__`, and nothing else, regardless of what is imported outside of the `eval`.

The return value of `eval` is the is the result returned by evaluating the expression given.

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

Finally, it is important to be aware of **the security risks associated with `eval`**. If you pass user input to an `eval` and have not restricted the functions available to the expression, it is possible that the user could compromise system security or integrity.

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

    from math import *
    print(???('pow(9, 3)',
    {'sqrt': ???, 
      'pow': ???, '???': None}))

- `eval`
- `None`
- `pow`
- `__builtins__`
- `math.sqrt()`
- `squareRoot()`


---

## Revision

Fill in the blanks to evaluate the expression, but rename the `gcd` function to `greatestCommonDivisor`.

    from math import *
    print(???(???(9, 3)',
    {'???': ???}))

- eval
- greatestCommonDivisor
- greatestCommonDivisor
- gcd
- math.gcd
- sqrt


---

## Footnotes

[1:Scope]
*To check the available variables and methods in a section of code, use the command `print(eval('dir()'))`, which lists them to the console. We can also see the global and local dictionary currently available using the `globals()` and `locals()` built-in methods, respectively.*
 
