---
author: Aaron7Sun

levels:

  - basic

  - advanced

  - medium

type: normal
aspects:
  - introduction
  - workout
  - obscura
standards:
  python.native-types-operations.4: 10

category: tip

---

# Merge two lists into a dict

---
## Content

Imagine we have two lists whose elements are connected between each other by their index. Now, we want to sort them based on the values of the first list.

For example, we can have a list representing names and a second one representing age of some persons. We want to sort them alphabetically and also to be able to tell how old is each one.  

The `zip()` method can bind two lists together such that they become a single one made of tuples:
```python
names = ['John', 'G', 'Arron', 'Jack']
age = [18, 21, 40, 32]

print(zip(names, age))
>>> [('John', 18), ('G', 21), ...]
```

But also *unzip* them when used together with `*` ( the spread operator ).

```python
names = ['John', 'G', 'Arron', 'Jack']
age = [18, 21, 40, 32]

names, age = zip(*sorted(zip(names, age)))
```

The `sorted()` method is the equivalent of `sort()` in python3. It sorts the tuples formed from the first `zip` comparing them by the *1st* element of each tuple.


---
## Practice

Sort the the following two lists in parallel based on the the values in the first one:
```python

heights=[8848,8611,8516,8481]
names=['Everest','K2','Lhotse','Makalu']

zipped = ???(???, ???)
heights, names=zip(???(zipped))
```

* `zip`
* heights
* names
* `*sorted`
* `sorted`
* age
* `list`

---
## Revision

Consider the following two lists:
```python
cities = ['NY', 'London', 'Rome', 'Paris']
temps = [17, 12, 21, 16]
```
Choose the correct order of the second list after the following script is run:
```python
zipped = zip(cities, temps)
cities, temps = zip(*sorted(zipped))
```
???


* [12, 17, 16, 21]
* [12, 16, 17, 21]
* [12, 16, 21, 16]
