---
author: mihaiberq
type: normal
category: feature
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Functools' wraps


---

## Content

As useful as decorators can be, they prove hard to debug. One important reason for that is the wrapping mechanism: the decorator overrides the wrapped function's properties, such as the name or the documentation (*docstrings*[1]).   

For example, for the code below:

```python
def h2_decorate(string_function):
  def func_wrapper(name):
    return "<h2>{0}</h2>".format(string_function(name))
  return func_wrapper

@h2_decorate
def say_hello(name):
  """docstring"""
  return "Hello, {0}!".format(name)
print(say_hello.__name__)
```

Outputs:

```python
func_wrapper
# instead of expected
say_hello
```

This is, most of time, not helpful, even though it makes sense. However, `functools` module provides an useful *decorator*, `wraps`, that acts as a middleware between the two functions and which transfers the metadata. Considering the same `say_hello` function:

```python
from functools import wraps

def h2_decorate(string_function):
  @wraps(string_function)
  def func_wrapper(name):
    return "<h2>{0}</h2>".format(string_function(name))
  return func_wrapper

print(say_hello.__name__)
print(say_hello.__doc__)
# say_hello
# docstring
```


---

## Practice

Fill in the following snippet such that the following generator will print consecutive numbers:

```python

def my_generator(n):
  print('First print:')
  ???
  ???
  print('Second print:')
  yield n
```

- yield n
- n = n+1
- n++
- ++n
- yield my_generator


---

## Revision

The `wraps` function of `functools` module works like any other

???

- decorator
- method
- module
- class method


---

## Footnotes

[1: Docstring]
Python docstrings are a way of documenting code. The docstring for an object should be the first statement of that object, after the definition. They are recognized by the Python compiler and can be accessed via `__doc__` property of the object.
 
