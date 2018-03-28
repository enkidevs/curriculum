---
author: catalin

levels:

  - basic

  - medium

type: normal

category: must-know

notes: |
  Some changes to the text.

links:

  - >-
    [pythontips.com](http://pythontips.com/2013/09/29/the-python-yield-keyword-explained/){website}

---
# `yield` keyword

---
## Content

The `yield` keyword is fundamental to the creation of **generators**.


Consider the following generator function:
```python
def createGenerator():
    print('Initial call')
    yield '1'
    print('Second call')
    yield '2'

a = createGenerator()

```
Calling the `createGenerator()` function will create a generator object stored as `a`. Note that the code inside the generator function will **not be run** yet.
```python
print(next(a)) 
# Initial call
# 1
```

The first time the generator object is iterated over (in a loop or with `next()`), the function code will be run from the start until the first `yield`. The value in the `yield` statement is returned and the current position in the code is saved internally.
```python
print(next(a))
# Second call
# 2
```
The second `next` call will resume the code from just after the previous `yield` and will continue running it until another `yield` is found where it returns the desired value.

When there are no more `yield` keywords, the generator object is considered **empty**.
```python
print(next(a)) # StopIteration error

```

---
## Practice

What would be outputted by the following snippet?
```
def createGen():
   yield ‘1’
   yield ‘2’
a = createGen()
next(a)
next(a)
print(next(a))
#output: ???
```

* StopIteration error
* 1 
* 2 
* "'1'"
* "'2'"
* Generator error

---
## Revision

When a generator is iterated over for the first time, the code will be run from the start until ???.

* the first yield keyword is found
* the last yield keyword
* the end of the code
* all yield keywords are gone through
* end of time