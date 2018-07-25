---
author: stefkn

levels:

  - beginner

  - basic

  - medium

type: normal

category: must-know

aspects:
  - introduction
  - workout
  - deep
standards:

  python.data-structures-uses.0: 10
  python.data-structures-uses.1: 10
  python.native-types-operations.3: 10
  python.use-iteration-protocol.1: 10
links:

  - '[Python sorted](https://www.programiz.com/python-programming/methods/built-in/sorted){website}'
  - '[Sorting Mini-HOW TO](https://wiki.python.org/moin/HowTo/Sorting/){website}'
  - '[Timsort](https://en.wikipedia.org/wiki/Timsort){website}'
  - '[PEP 3000](https://www.python.org/dev/peps/pep-3100/#id100){website}'
  - '[__cmp__ in Python 2 and 3](https://stackoverflow.com/questions/8276983/python-2-and-python-3-cmp){website}'


---

# The `sorted` Built-in Function

---
## Content

`sorted` is Python's built-in function for creating a new sorted list from an iterable object. It is distinct from the `sort` built-in function in that `sort` modifies a list 'in-place', i.e. without creating a new list. The `sorted` function takes the general form:

```python
sorted(iterable [, key] [, reverse])
```

Where:
 - `iterable` is the iterable object to be sorted. This argument in mandatory.
 - `key` is the function which serves as the comparison the sort will be based on. The default is `None`, so the input is directly compared. This argument is *optional*.
 - `reverse` is a boolean which, if True, reverses the result of the sort. This argument is *optional*.

The simplest use of sorted is in the ordering of numbers. Consider the code below:

```python
sorted([5, 2, 3, 1, 4])
```

returns a numerically-sorted list:

```python
[1, 2, 3, 4, 5]
```

The optional `reverse` argument can be given:

```python
sorted([5, 2, 3, 1, 4], reverse=True)
```

this returns the reversed numerically-sorted list:

```python
[5, 4, 3, 2, 1]
```

Behind the scenes, Python calls a derivative of merge-sort on the list (*Timsort*[1]), a recursive sorting algorithm which is efficient because it only requires the calling of the comparison function once per element in the input `iterable`. Being able to use the `sorted` function whenever we need to order a large data set is very useful since we don't need to worry about the efficiency of our algorithm when we use a readily-available, efficient and popular feature of the language.

We can also use `sorted` on strings, where Python lexicographically orders individual characters by comparing the Unicode code point number.

```python
pyString = ',.()-.12345ABCDabcd='
print(sorted(pyString))
# result:
# ['(', ')', ',', '-', '.', '.',
#  '1', '2', '3', '4', '5', '=',
#  'A', 'B', 'C', 'D',
#  'a', 'b', 'c', 'd']
```

Let's look at keys. Defining keys allows us to tell Python exactly what to compare to achieve the sort if we don't want Python to simply compare the two elements as they are. Below, we define a custom class of `Order`s, where each `Order` has a name and a number. We populate a list of orders and then define a function that returns the order number from a given order. We use this function as the key. This allows `sorted` to sort the list of orders by their number.

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

*Finally, there are some caveats it's good to be familiar with.* Some comparison mechanisms have changed in the jump from Python 2 to Python 3[2]. Before Python 3, the sort function called during comparison is the built-in `__cmp__`. After Python 3, the documentation recommends that you pretend `__cmp__` does not exist, and the `__cmp__` special method is not supported.

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


* `resident.floor`
* `list`
* `key=getFloor`
* `resident`
* `floor`
* `True`

---
## Revision

What is the result of the execution of the following code snippet?

```python
print(sorted([0, 2, 3, 1,
'a', 'b', 'A', 'B']))
```

???


* `[0, 1, 2, 3, 'A', 'B', 'a', 'b']`
* `['A', 'B', 'a', 'b', 0, 1, 2, 3,]`
* `[0, 1, 2, 3, 'a', 'b', 'A', 'B']`

---
## Footnotes
[1:Timsort]
*Technically, the sort algorithm in Python since version 2.3 has been Timsort, named after creator Tim Peters. It is derived from a hybrid approach of merge sort and insertion sort. Timsort finds subsequences of the data that are already sorted and uses the information found there to sort the rest of the list more effectively. For more information, see the Wikipedia page in the Learn More section titled 'Timsort'.*

[2:Python 3]
*On December 3, 2008, Python moved from version 2 to version 3, which caused a lot of debate and discussion. This was because the aim of the update was to rectify certain fundamental design flaws in the original language; many of the changes made it impossible to maintain compatibility with version 2. From their documentation (PEP 3000): "A general goal is to reduce feature duplication by removing old ways of doing things".

Today, Python 3 is widely recommended and used, and still very similar for most cases, except in some niche scenarios. See PEP 3000 in the Learn More section for further information.*
