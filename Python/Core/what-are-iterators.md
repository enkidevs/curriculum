# What are iterators?
author: stefkn

levels:

  - beginner

type: normal

category: must-know

links:

  - '[Iterators vs. Generators](http://nvie.com/posts/iterators-vs-generators/)'

---
## Content

In the previous insight we encountered `iterable` objects. One of the ways for an object to be considered `iterable` was if it had an implemented `__iter__()` method (*pronounced "dunder iter"[1]*) which returns an `iterator`. But what is an iterator?

An iterator is a stateful, helper object which returns each element in an iterable object one by one, sequentially, until none remain. Some iterators will continue indefinitely. The implementation (how the iterator produces values) is different for each specific one, and is therefore not important.

Any object with the `__next__()` method implemented to return some values counts as an iterator. Each time `__next__()` is called on the iterator, it returns the next value in the sequence. Iterators have **internal state**, which means they privately keep track of how far in the sequence the iteration has gone. This allows the same iterator to keep track of its place, even if used by different methods in different areas of code.

It may be helpful to think of an iterator as a "lazy value factory". Imagine a factory which produces values. The values it creates are the elements of the iterable object the iterator was created from. It is **lazy** because the factory only starts up its machinery when it's asked for a new value (when you call `__next()__`), and as soon as that value is produced it stops exactly at that point. The factory keeps track of where it is in the iterable sequence because it has internal state.

Here are some examples of iterators, taken from the `itertools` module. Every function in this module returns an iterator, and we'll be exploring it in further detail in a later insight.

```python
from itertools import counter
newCounter = count(start=42)
print(next(newCounter)) # result: 42
print(next(newCounter)) # result: 43
print(next(newCounter)) # result: 44
```

Counter is a simple numerical iterator which counts up from a given value infinitely. Others include `cycle`, which iterates infinitely through a given finite list, and `islice` which creates a given finite length iterator from an infinite iterator.

---
## Practice

Which method(s) need to be implemented for an object to be classed as an iterator?

???

* `__next__()`
* `__next__()`, `__iter__()`
* `__iter__()`, `__getitem__()`
* `__iter__()`, `__getitem__()`, `__next__()`

---
## Revision

Which method is called to retrieve a value from an iterator?

???

* `__next__()`
* `__getitem__()`
* `__iter__()`
* `__child__()`

---
## Footnotes

[1:Double Underscore in Python]
Double underscores in Python are commonly referred to by Pythonistas as "dunder" for brevity. `__iter__` is therefore pronounced *"dunder iter"*.
The meaning behind double underscores is to allow the core Python team to define so-called "Magic Methods" which define certain protocols that classes can choose to implement or not. By default, many of the built-in classes implement these methods.  
The double underscore was chosen as way to not have as many `reserved` method names such as in Java, by prefixing and postfixing the underscores, the name `iter` is still usable in code without interfering with the language's underlying mechanisms.
