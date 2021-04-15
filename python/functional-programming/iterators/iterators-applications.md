---
author: stefkn
type: normal
category: must-know
links:
  - >-
    [Iterators and
    Generators](http://chimera.labs.oreilly.com/books/1230000000393/ch04.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Iterators Applications


---

## Content

Iterators are very practically useful. In many cases, they can achieve the same results with far fewer lines of code and while using less resources than other approaches, since with iterators we can guarantee we will access the next item in the collection without having to keep the entire collection and our position inside it within memory.

Consider reading and printing the contents of a simple text file:

```python
file = open('somefile', r)

while True:
  line = file.readline()
  if not line:
    break
  else:
    print(line)
```

With iterators this entire process can be encapsulated as:

```python
file = open('somefile', r)

for line in file:
  print(line)
```

In this example, notice how the `file` object is actually an iterator and implements the `__next__()` method which allows for the contents to be iterated over. If we need to rewind the pointer to the beginning of the file on a used iterator, we can use `file.seek(0)`, although it is usually suggested to only iterate a file object once, and extract the important information into a separate data structure (a dictionary, set, list etc.) on the first iteration over it.[1]

Any time you'd like to access items from an iterable collection sequentially but don't want to use a for-loop, an iterator can come in handy. Just write your code to gracefully handle the `StopIteration` exception:  

```python
list = ['a', 'b', 'c', 'd']
it = iter(list)
try:
  while True:
    line = next(it)
except StopIteration:
  print("Done iterating!")
```

You can even create your own custom class/container and implement the iterator methods yourself, creating your own custom iterators from that class. Just define an `__iter__()` method that delegates the iteration to whatever data structure is held inside your custom class:

```python
class Thing:
  def __init__(self, val):
    self._value = val
    self._list = []

  def add_to_list(self, obj):
    self._list.append(obj)

  def __iter__(self):
    return iter(self._list)

# Then use can use it like:

thing = Thing(12)
thing2 = Thing(10)
thing.add_to_list(thing2)
for x in thing:
  print x
```

Iterators can also perform some pretty complex tasks, especially those from `itertools`. For example, you can iterate over all possible permutations of a string using the `itertools` method `itertools.permutations()`

```python
import itertools
list = ['a', 'b', 'c', 'd']
for x in itertools.permutations(list):
  print(x)
# Result: ('a', 'b', 'c', 'd')
# ('a', 'b', 'd', 'c')
# ('a', 'c', 'b', 'd')
# ('a', 'c', 'd', 'b')
# ('a', 'd', 'b', 'c')
# ('a', 'd', 'c', 'b')
# ...
```

Or iterate in reverse using the `reversed()` method:

```python
list = ['a', 'b', 'c', 'd']
for x in reversed(list):
  print(x)
# Result: d c b a
```


---

## Practice

`next()` can actually be given a second argument, other than the iterator object from which to get the next element. Calling `next(iterator, None)` causes *reaching the end of the collection to not trigger a StopIteration exception and instead just return a* `None` *object.* We can define anything to be returned in this case. How could we use this in our 'instead of a for loop' example?

```python
list = ['a', 'b', 'c', 'd']
it = iter(list)
while True:
  line = next(it, None)
  ???
```

- `if line is None: break`
- `if Line is None: break`
- `catch StopIteration: `
- `if None: break`


---

## Revision

What method must a custom class implement to be able to support creating iterators?

???

- `__iter__()`
- `__next__()`
- `__self__()`
- `__init__()`


---

## Footnotes

[1:I/O Operations]
It's generally recommended to close files as soon as you've extracted the data you need to a separate data structure to avoid the possibility of concurrent access errors, or issues with other processes (whether they be OS or third party) wanting to access the same file at the same time. It also happens to be more efficient as the mode-bit change and context switch required to execute the system call to read from storage causes some overhead.
 
