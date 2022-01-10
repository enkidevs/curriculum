---
author: stefkn
type: normal
category: must-know
links:
  - >-
    [Iteration
    Protocol](https://medium.com/the-python-corner/iterators-and-generators-in-python-2c3929a144b){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# The Iteration Protocol


---

## Content

The iteration protocol simply refers to the flow of actions that take place each step of an iteration. Iteration is the process of taking one element at a time from a group of elements sequentially; in Python specifically, an iteration is the process of looping through an `iterable` object, which is a collection of objects, and doing something with each element.

Python's built-in function `iter` takes any `iterable` object and returns an iterator from that object.

Each time we call the `next` method on the iterator given, it returns the next element in the `iterable` object. If no more elements remain in the `iterable` object, the iterator raises a `StopIteration` exception[1].

Iterators are always implemented as classes. Let's examine an iterator's code for a better understanding:

```python
class Counter(object):
  def __init__(self, start, finish):
    self.current = start
    self.finish = finish

  def __iter__(self):
    return self

  def __next__(self):
    if self.current > self.finish:
      raise StopIteration
    else:
      self.current += 1
      return self.current - 1
```

We're already familiar with the `iter` and `next` methods. The `init` method is what is called when the iterator is first created. However, it is not a constructor since the object is already created when the code within `init` is executed. Instead, this is referred to as an initializer.

In this `Counter` example, we can see that `init` takes the values defined by the creator of the iterator (the start and finish values) and keeps track of them. The `next` method checks to see if the iterator has gone beyond the defined `finish` value, and if not, increases the current value and returns the value before that. If the value has exceeded the `finish` value, a StopIteration exception is raised. Simple!

Notice how the iterator itself has an `iter` method implemented. This means that the iterator itself is both iterable and an iterator.

We can use many of Python's built-in functions on iterators and get proper results:

```python
print(list(Counter(0, 5)))
# Result: [0, 1, 2, 3, 4, 5]
print(sum(Counter(0,5)))
# Result: 15
```

It's important to remember that if the iterator and iterable are both the same object, it is consumed after just one full iteration. Built-in functions such as `list` and `sum` (and more) work by iterating through the whole iterator to produce their answer, so if we execute:

```python
thing = (Counter(0, 5))
print(list(thing))
# Result: [0, 1, 2, 3, 4, 5]
print(list(thing))
# Result: []
```

...the second time we call list, it is as if the iterable is completely empty. This would not be the case if we called `list` directly on `Counter(0, 5)`, since it would be a new iterator each time.


---

## Practice

What happens when an iterator reaches the end of the sequence being iterated on?

???

- StopIteration exception
- FinishIteration exception
- ReferenceError exception
- TypeError exception
- Nothing


---

## Revision

What is the result of the following code execution?

```python
iterator = Counter(0,5)
print(sum(iterator))
print(sum(iterator))
```

```plain-text
???, then ???
```

- 15
- 0
- TypeError exception
- 10
- 5


---

## Footnotes

[1:`StopIteration` exception]
An exception is simply another word for an error. Taken directly from the Python 3.6 documentation:
"Raised by built-in function `next()` and an iterator‘s `__next__()` method to signal that there are no further items produced by the iterator. The exception object has a single attribute value, which is given as an argument when constructing the exception, and defaults to None."
 
