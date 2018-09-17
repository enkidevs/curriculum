---
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know
aspects:
  - introduction
  - workout
standards:
  comp-sci.analyze-complexity-search-sort-algorithms.0: 10
  comp-sci.analyze-complexity-data-structure-access-operations.1: 10
  comp-sci.analyze-complexity-data-structure-access-operations.5: 10


links:

  - '[More information here](https://monjurulhabib.wordpress.com/2016/09/22/python-when-to-use-list-vs-tuple-vs-dictionary-vs-set-theory/){website}'


---

# Lists vs Dictionaries.

---
## Content

The **list** is the most versatile data structure available in **Python**.

One big difference between **lists** and **dictionaries** is that we can store several elements of different types in the same list. Secondly, **lists** are collections of elements that can contain **duplicate elements** and have a **defined order** that generally does not change unless explicitly made to do so.

**Dictionaries** represent unordered sequences of elements. Moreover, we can state that dictionaries are the **Python** implementation of an abstract data type called **associative array**. Associative arrays consist - like dictionaries - of **(key, value) pairs**, such that each possible **key** appears at most **once** in the collection. The **values** of a dictionary can be any Python data type.

Consider the following example:
```
my_list = ['list', 'second', 3, 4]

dict = {'Name': 'Seba',
        'Age': 21,
        'Year': 'Second'}
```

Because elements stored in **lists** can be accessed using **indices**, the retrieving of an element will be done in `O(n)` in the worst case scenario. When using **dictionaries**, indices are replaced by **keys** (hashable types). This means that retrieving a certain element would be done in `O(1)` as we can find each **value** associated to each **key** directly.

Let's see an example:
```
# Printing elements of a list
print(my_list[0], '\n', my_list[3])

# Output:
# list
# 4

# Printing elements of a dictionary
print(dict[Name], '\n', dict[Year])

# Output:
# Seba
# Second
```

---
## Practice

What complexity is required for a lookup on a list?
???


* `O(n)`
* `O(1)`
* `O(n^2)`

---
## Revision

Consider the following example:
```
my_dict = {1 : 2, 2 : 4, 3 : 5, 6 : 7}
my_list = [1, 3, 5, 6, 7]

print(my_dict.__(my_list[__]))

```
We want to access value `5` from the dictionary using one of the list's elements.
???


* get(), 1
* get(), 2
* getitem(), 0
