---
author: catalin

levels:

  - basic

  - medium

type: normal

category: feature
aspects:
  - introduction
  - workout
  - deep
standards:
  python.object-oriented.1: 10
  python.object-oriented.5: 10

links:

  - '[docs.python.org](https://docs.python.org/3.5/tutorial/classes.html#exceptions-are-classes-too){website}'


---

# Custom exceptions as classes

---
## Content

On top of the built-in exceptions, you can also define custom ones, by extending the `Exception` class:

```python
class BaseError(Exception):
  """Base class for other exceptions"""
  pass
class PassTooSmall(BaseError):
  """Raised when password is < 8 chars"""
  pass
class PassNoUpperCase(BaseError):
  """Raised when no uppercase char used"""
  pass
```

We can raise any of these exceptions using the `raise` statement:
```python
inputs = ['smallP', 'nouppercase',
 'PerfectlyFine']

for i in inputs:
  try:
    if (len(i) < 8):
      raise PassTooSmall
    elif not any(c.isupper() for c in i):
      raise PassNoUpperCase
    print('Perfect password!')
    break
  except PassTooSmall:
    print('Password too small \n')
  except PassNoUpperCase:
    print('Pass has no uppercase\n')

# Password too small

# Pass has no uppercase

# Perfect password!

```

**Unhandled exceptions** will print an error message with the exception's class name. Suppose we remove the last `except PassNoUpperCase` clause; the following message will be printed:
```python
...
raise PassNoUpperCase
__main__.PassNoUpperCase
```

---
## Practice

With the help of inheritance, create your custom exception:
```python
??? AuthenticationError(???):
   print('Wrong username or password')
```


* `class`
* `Exception`
* `inherit`
* `extend`
* `error`
* `exception`

---
## Revision

Python's `Exception` class is a ??? class.


* `built-in`
* `sub`
* `parent`
* `child`
* `static`
* `private`
