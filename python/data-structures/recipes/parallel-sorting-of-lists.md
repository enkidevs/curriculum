# Sort 2 lists together
author: Aaron7Sun

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

---
## Content

Imagine we have two lists that whose elements are connected between each other by their index. We would like to have them sorted based on the elements of the first one.

For example, we can have a list representing names and a second one representing age of those persons. We want to sort them alphabetically and also to be able to tell how old is each one.  

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
