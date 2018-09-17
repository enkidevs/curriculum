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
  python.native-types-operations.10: 10

links:

  - '[more about built-in exceptions](https://docs.python.org/3/library/exceptions.html){website}'


---

# Built-in Exceptions

---
## Content

In Python, all exceptions must inherit the `BaseException` class. Usually, **exceptions** have an associated *"value"* indicating the cause of the **error**. This *"value"* is a class variable that could either be a string or a tuple, which is required for the exception to be instantiated.

The **built-in exceptions** can be subclassed to define **new** exceptions. Users are advised to derive from `Exception` or one of its subclasses and not `BaseException`.

**Common Built-in Exceptions:**

- `ArithmeticError`  : base class for all errors that occur for **numeric calculations**.
- `AssertionError`   : raised in case of failure of an assertion[1].
- `EOFError`         : raised if the `input()` function hits the end-of-file condition (`EOF`) without reading any data.
- `IndexError`       : raise when trying to access an item that is out of sequence's boundaries.
- `NameError`        : raised when an identifier is not found in the **local** or **global** namespace.
- `UnboundLocalError`: raised when trying to access a local variable in a function or method but no     value  has been assigned to it.
- `SyntaxError`      : raised when Python doesn't understand the statement.
- `TypeError`        : raised when an operation or function is attempted that is invalid for the specified data type.
- `RuntimeError`     : raised when a generated error does not fall into any of the above categories.

---
## Practice

If we use an undefined variable, what type of exception will the parser rise?
???


* `NameError`
* `UnboundLocalError`
* `RuntimeError`
* `SyntaxError`

---
## Revision

Which of the following is the exception usually thrown by a built-in input function?
???


* `EOFError`
* `TypeError`
* `SyntaxError`
* `AssertionError`

---
## Footnotes
[1:AssertionError]
An AssertionError is an error generated for something that was thought to be impossible to happen. Usually, it is thrown because of a programming error.
