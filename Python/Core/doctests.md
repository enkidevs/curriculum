# Doctest
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[more information about doctests](https://docs.python.org/3/library/doctest.html)'

---
## Content

**Doctest** enable users to test their code by running examples **embedded** in the program comments and verifying that they produce the **expected output**.

We begin by importing the next module:

```
# doctest_mock.py
import doctest

def multiply(a, b):
    return a * b
```
Consider the following **doctest** example:

```
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
    """
    return a * b

if __name__ == '__main__':
    doctest.testmod()

```

To make use of **doctest**, we need:
- to call this module in a **Python** interactive shell and run it with some values;
- afterwards we copy the session of the interactive shell into the docstring[1] of our **function**.
- finally, to start the **module doctest** we have to call the **method** `testmod()`, but only if the module is called **standalone**[2].

**Note** that normal text documentations usually contain isn't affected by **doctest**. It looks for lines beginning with the interpreter prompt (`>>>`) to find the beginning of a **test case**. The case is ended by a blank line or the next interpreter prompt.

Running **doctests** without any flag wouldn't generate any output, but if the `-v` flag is passed, a **detailed log** will be printed:

```
$ python doctest_mock.py -v
```

The output:
```
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
1 items had no tests:
    __main__
1 items passed all tests:
   2 tests in __main__.multiply
2 tests in 2 items.
2 passed and 0 failed.
Test passed.
```

---
## Footnotes

[1: docstring]
An object's docstring is defined by including a string constant (documentation) as the first
statement in the object's definition.

[2: standalone]
It's not part of any other module.

---
## Practice

What is the output of the doctest if no flag is passed?
???

* There will be no output printed.
* It states, in a concise form, what each test does.
* It prints the test results in a verbose form.

---
## Revision

How does doctest find a new test case in the documentation?
???

* It searches for lines that begin with interpreter prompt (`>>>`).
* It searches for any strings in the documentation.
* It knows that tests begin after an empty line.
