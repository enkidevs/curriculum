---
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know
aspects:
  - introduction
  - workout
  - deep
standards:
  python.testing.1: 10
  python.testing.4: 10

links:

  - '[More on doctests](https://docs.python.org/3/library/doctest.html){website}'


---

# Doctest

---
## Content

**Doctest** enable users to test their code by running examples **embedded** in the program comments and verifying that they produce the expected output.

We begin by importing the *doctest* module and defining a function:
```python
# doctest_mock.py
import doctest

def multiply(a, b):
    return a * b
```
Then, define the tests inside the function's docstring[1]:
```python
# doctest_mock.py
import doctest

def multiply(a, b):
    """
    Test for numbers:

    >>> multiply(3,3)
    9

    Test for chars:

    >>> multiply('a',3)
    'aaa'
    >>> multiply('a',0)
    ''
    """

    return a * b

if __name__ == '__main__':
    doctest.testmod()

```

Text documentation (`"Test for numbers:"`, `"Test for chars:"`) isn't taken into account by **doctest**. The module looks for lines beginning with the interpreter prompt (`>>>`), which marks the start of a *test case*. Either a blank line or another interpreter prompt end the test case.

Running **doctests** without any flag won't generate any output if the *tests pass*. If the flag `-v` is passed as an argument, a **detailed log** will be printed:
```bash
$ python doctest_mock.py -v
```
The output:
```python
Trying:
    multiply(3, 3)
Expecting:
    9
ok
Trying:
    multiply('a', 3)
Expecting:
    'aaa'
ok
Trying:
    multiply('a', 0)
Expecting:
    ''
ok
1 items had no tests:
    __main__
1 items passed all tests:
   3 tests in __main__.multiply
3 tests in 2 items.
3 passed and 0 failed.
Test passed.
```

---
## Practice

Create a `doctest` for the following methods:

```python
def sum(a, b):
    # Test:
    """
    >>> ??? ???
    2
    """
    return ???
```

* sum
* (1 + 1)
* a + b
* 1 + 1
* (a + b)


---
## Revision

How does `doctest` find a new test case in the documentation?
???

* It searches for lines that begin with the interpreter prompt (`>>>`).
* It searches for any strings in the documentation.
* It knows that tests begin after an empty line.

---
## Footnotes
[1: docstring]
An object's docstring is defined by including a string constant (documentation) as the first
statement in the object's definition.
