---
author: stefkn

levels:

  - beginner

  - basic

  - medium

type: normal
aspects:
  - introduction
  - workout
  - deep
category: must-know
standards:
  python.use-iteration-protocol.1: 10

links:

  - '[Python reversed()](https://www.programiz.com/python-programming/methods/built-in/reversed){website}'


---

# The `reversed` Built-in Function

---
## Content

The `reversed` built-in allows us to create an iterator for an iterable sequence of objects which iterates through the collection in reverse order. For `reversed` to work, the object passed to it as an argument must implement the `__reversed__()` method or otherwise support the `__len__()` and `__getitem__()`[1] methods with integer arguments. `reversed` takes the syntax:

```python
reversed(seq)
```

Where `seq` is an iterable sequence such as a tuple, list, string or range. This returns an iterator which accesses the elements in the sequence in the reverse order. For example, we may use `reversed` to reverse the order of characters in a string.

```python
ourString = 'enki'
print(list(reversed(ourString)))
# Result: ['i', 'k', 'n', 'e']
```

Notice how we could create custom classes that implement the `__reversed__()` method and then use `reversed` on them to quickly and efficiently reverse their ordering. In this way we can begin to see how often the `reversed` function might be useful in day-to-day programming tasks.

---
## Practice

Fill in the blanks to reverse the order of the list `ourList`.

```python
ourList = [5, 4, 3, 2, 1]
newList = ???(???(???))
```


* `list`
* `reversed`
* `ourList`
* `newList`
* `seq`
* `__reversed__`

---
## Revision

Fill in the blanks so that the following custom class properly implements `__reversed__()`, so that `reversed` can be used on instances of the class.

```python
class Classroom:
    pupils = ['bob', 'joe', 'anne']

    def __reversed__(self):
        return ???(???.???)

c = Classroom()
print(list(reversed(c)))
```


* `reversed`
* `self`
* `pupils`
* `Classroom`
* `bob`
* `__len__()`

---
## Footnotes
[1:`__len__ and __getitem__`]
*Supporting these two methods is called supporting sequence protocol in Python. These two methods allow Python to find the total length of the given sequence and access elements arbitrarily inside the sequence. Knowing the total size of the sequence allows Python to access the element at the end of the list and move backwards toward the beginning of the sequence.*
