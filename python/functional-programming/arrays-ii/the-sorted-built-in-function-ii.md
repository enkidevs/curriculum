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

# The sorted Function (Part 2)


---

## Content

Now, let's look at using keys together with the `sorted` method. Defining keys allows us to tell Python exactly what to compare to achieve the sort if we don't want Python to simply compare the two elements as they are. Below, we define a custom class of `Order`s, where each `Order` has a name and a number. We populate a list of orders and then define a function that returns the order number from a given order. We use this function as the key. This allows `sorted` to sort the list of orders by their number.

```python
class Order(object):
  def __init__(self, name, number):
    self.name = name
    self.number = number
  def __repr__(self):
    return '({}, {})'.format(self.name,
    self.number)

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

*N.B. The `__repr__` override is only there so that the `print` function outputs a reader-friendly result, as opposed to memory addresses of objects.*

*Finally, there are some caveats it's good to be familiar with.* Some comparison mechanisms have changed in the jump from Python 2 to Python 3[1]. Before Python 3, the sort function called during comparison is the built-in `__cmp__`. After Python 3, the documentation recommends that you pretend `__cmp__` does not exist, and the `__cmp__` special method is not supported.

This means if you try to use `sorted` on a list of custom class objects where you have overridden the `__cmp__` function and rely on this for your sort, you might encounter `TypeError`s. However, for most cases, including the examples above, there is no difference in version 2 or 3. The details are beyond the scope of this lesson, but see the Learn More section for extra material.


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

[1:Python 3]
*On December 3, 2008, Python moved from version 2 to version 3, which caused a lot of debate and discussion. This was because the aim of the update was to rectify certain fundamental design flaws in the original language; many of the changes made it impossible to maintain compatibility with version 2. From their documentation (PEP 3000): "A general goal is to reduce feature duplication by removing old ways of doing things".

Today, Python 3 is widely recommended and used, and still very similar for most cases, except in some niche scenarios. See PEP 3000 in the Learn More section for further information.*
 
