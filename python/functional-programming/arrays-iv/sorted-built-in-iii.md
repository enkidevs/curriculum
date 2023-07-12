---
author: stefkn
type: normal
category: must-know
links:
  - >-
    [Python
    sorted](https://www.programiz.com/python-programming/methods/built-in/sorted){website}
  - '[Sorting Mini-HOW TO](https://wiki.python.org/moin/HowTo/Sorting/){website}'
  - '[Timsort](https://en.wikipedia.org/wiki/Timsort){website}'
  - '[PEP 3000](https://www.python.org/dev/peps/pep-3100/#id100){website}'
  - >-
    [__cmp__ in Python 2 and
    3](https://stackoverflow.com/questions/8276983/python-2-and-python-3-cmp){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Sorting custom objects


---

## Content

Now, let's take a closer look at using keys together with the `sorted` method!

Below, we define a custom class of `Order`s, where each `Order` has a name and a number. 

We populate a list of orders and then define a function that returns the order number from a given order.

Finally we use this function as the key to sort by:

```python
class Order(object):
  def __init__(self, name, number):
    self.name = name
    self.number = number
  def __repr__(self):[1]
    return f'({self.name}, {self.number})'

list = [Order('tom', 22),
        Order('bob', 55),
        Order('sam', 60),
        Order('alice', 10)]

def getNum(order):
  return order.number

print(sorted(list, key=getNum))

# result:
# [(alice, 10), (tom, 22),
#  (bob, 55), (sam, 60)]
```



---

## Practice

Let us try and sort a list of custom `Resident` objects to get an ordered list of residents for a block of apartments. Fill in the missing blocks of code to achieve an ordering based on the floor the resident lives on.

```python
class Resident(object):
  def __init__(self, name, floor, number):
    self.name = name
    self.floor = floor
    self.number = number

list = [Resident('John', 1, 12),
        Resident('Cat', 3, 14),
        Resident('Boris', 6, 45),
        Resident('Bea', 2, 10)]

def getFloor(resident):
  return ???

print(sorted(???, ???))
```

- `resident.floor`
- `list`
- `key=getFloor`
- `resident`
- `floor`
- `True`


---

## Footnotes
[1: `__repr__`]
The `__repr__` override is only there so that the `print` function outputs a reader-friendly result, as opposed to memory addresses of objects.
