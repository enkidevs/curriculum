---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

aspects:

  - workout
  - deep
  - obscura

links:

  - '[preshing.com](http://preshing.com/20110920/the-python-with-statement-by-example/){website}'
  - '[docs.python.org](https://docs.python.org/3.5/library/stdtypes.html#context-manager-types){website}'

notes: >
  The explanation of the custom context manager should preferably have an small
  real-life example (which demonstrates the benefits of the feature), and also
  explain the 3 arguments of the __exit__ method and how they can be used in the
  surrounding code.

standards:
  python.store-manipulate-data.5: 10
  python.object-oriented.5: 10
  python.native-types-operations.7: 10


---

# Context manager types - `with`

---
## Content

The **context manager** type is a Python feature to help work with unmanaged resources (e.g. file streams) which it is better to clean up or shutdown in an orderly manner after use, e.g. always closing a file after use).

The use of the `with` statement (on objects that support it, such as built-in or custom context managers) is used to ensure resources are **cleaned up** after use.

```python
>>> with open('a.txt', 'w') as f:
...     f.write('a line')
...
>>> f.closed
True
>>> with open('a.txt', 'r') as f:
...     l = f.read()
...
>>> f.closed
True
>>> l
'a line'
```
`with` can be seen as syntactic sugar for the `try/except/finally` block.

To implement a custom **context manager**, two methods must be implemented:

```python
class my_context_manager:
  def __enter__(self):
      # set up things
      return thing
  def __exit__(self,type,value,traceback):
      # deal with unmanaged resources
#....
with my_context_manager as custom_name
   # work with resources

```
When the `with` statement is executed, `__enter__` is called, assigning the returned value to the variable after `as`.

Whatever happens in the code, the `__exit__` method will be called in the end to make sure nothing is left unmanaged.

---
## Practice

Complete the code snippet to implement a context manager:

```python
class new_context_manager:
  def ???(self):
      # set up things
      return thing
  def ???(self, type,
         value, traceback):
      # deal with unmanaged resources

with new_context_manager as custom_name
   # work with resources
```


* `__enter__`
* `__exit__`
* `__close__`
* `__start__`
* `__end__`
* `__run__`

---
## Revision

`with` can be seen as syntactic sugar for the ??? block.

What functionality does `with` carry in a `with context as name` block in Python?

???


* `try/except/finally`
* It automatically cleans up the `context` resource after use.
* It ensures that context object exists and if doesn't the compiler will throw an error.
* `try/catch`
* `exceptions`
