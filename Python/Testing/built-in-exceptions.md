# Built-in Exceptions
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[link to learn more](https://enki.com)'

---
## Content

In **Python** all exceptions must be instances of a class that derives from `BaseException` class. Usually **exceptions** have an associated *"value"* indicating the **cause** of the **error**. This *"value"* may be a `string` or a tuple of several items of information and it is usually **passed** as an argument to the **exceptions**'s class **constructor**.

The **built-in exceptions** can be subclassed to define **new** exceptions. Users are advised to derive from `Exception` or one of its subclasses and not `BaseException`.

**Common Built-in Exceptions:**

- `ArithmeticError`  : base class for all errors that occur for **numeric calculations**.
- `AssertionError`   : raised in case of failure of the **Assert statement**.
- `EOFError`         : raised when there is no input from either the `raw_input()` or `input()` function and the end of file is reached.
- `IndexError`       : raise when index is not found in **sequence**.
- `NameError`        : raised when an identifier is not found in the **local** or **global** namespace.
- `UnboundLocalError`: raised when trying to access a local variable in a function or method but no     value  has been assigned to it.
- `SyntaxError`      : raised when there is an error in **Python** syntax.
- `TypeError`        : raised when an operation or function is attempted that is invalid for the specified data type.
- `RuntimeError`     : raised when a generated error does not fall into any category.

---
## Practice

If we use an undefined variable, what type of exception will rise?
???

* `NameError`
* `UnboundLocalError`
* `RuntimeError`
* `SyntaxError`

---
## Revision

What type of built-in exception is specific to input errors?
???

* `EOFError`
* `TypeError`
* `SyntaxError`
* `AssertionError`
