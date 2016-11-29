# Custom exceptions as classes
author: catalin

levels:

  - basic

  - medium

type: normal

category: feature

links:

  - >-
    [docs.python.org](https://docs.python.org/3.5/tutorial/classes.html#exceptions-are-classes-too){website}

---
## Content

Because **exceptions** in Python are built-in classes, you can create your own exceptions by inheriting from class `Exception` or one of its subclasses.

```python
class ErrOne(Exception):
  pass
class ErrTwo(ErrOne):
  pass
class ErrThree(ErrTwo):
  pass
# these are all exceptions
```

We can raise any of these exceptions using the `raise`  statement:
```python
for err in [ErrOne, ErrTwo, ErrThree]:
  try:
    raise err()
  except ErrThree:
    print("3")
  except ErrTwo:
    print("2")
  except ErrOne
    print("1") 
# output 1 / 2 /3
```

**Unhandled exceptions** will print an error message with the exception's class name. Suppose we remove the last `except ErrOne` clause, the following message will be printed:
```python
....
    raise err()
__main__.ErrOne
```

---
## Practice

With the help of inheritance, create your exception:
```
??? MyException(???):
   pass
```

*`class` 
*`Exception` 
*`inherit` 
*`extend` 
*`error` 
*`exc``ep``tion`

---
## Revision

Exceptions in Python are ??? classes.

*`built-in` 
*`sub` 
*`parent` 
*`child` 
*`static` 
*`private`