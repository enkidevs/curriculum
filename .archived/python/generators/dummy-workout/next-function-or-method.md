---
author: catalin

levels:

  - basic

  - medium

type: normal

category: must-know

links:

  - >-
    [sebastianraschka.com](http://sebastianraschka.com/Articles/2014_python_2_3_key_diff.html#The-next-function-and-next-method){website}

---
# `next` - function or method

---
## Content

While in **Python 2** it was possible to use both the function `next()` and the `.next()` method to iterate over the resulting values of a generator, the latter has been removed with the introduction of **Python 3**.

Consider the sample generator:
```python
def sample_generator():
    yield "a"
    yield "b"
    yield "c"
```
In Python 2:
```python
a = sample_generator()
print(next(a)) # prints 'a'
print(a.next()) # prints 'b'

```

But in Python 3:
```python
print(next(a)) # prints 'a'
print(a.next()) # AttributeError
```

---
## Practice

In Python 3, what would the output of the following code snippet be?
```
def gen():
  yield 1
a = gen()
print(a.next())
#???
```
* AttributeError 
* 1
* "'1'" 
* GeneratorError

---
## Revision

In Python 3, what can be used to iterate over a generator?

???

* the next() function 
* the .next() method
* both next() function and method
