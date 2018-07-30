---
author: Aaron7Sun

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

tags:

  - speed-up-code
standards:
    python.use-iteration-protocol.1: 10
    python.use-comprehensions.0: 10
    python.use-comprehensions.4: 10
    python.use-comprehensions.5: 10

links:

  - '[docs.python.org](https://docs.python.org/2/library/functions.html#map){website}'

notes: ''

---

# Speed up your `for` loop using `map()` or list comprehensions

---
## Content

The `for` loop interpreter overhead can be huge. So here `map()` functions like a `for` loop in C code.  

Example:

If you need to lowercase all the input strings:

```python
lowerList = []
for word in inputList:
    lowerList.append(word.lower())
```

Instead, you can use `map()` to push the loop into compiled C code:
```python
lowerList = map(str.lower(), inputList)
```

Also, in Python 2.0 or above, there are list comprehensions. List comprehension are the "pythonic" way to approach this situation. `map()` is more often used in JavaScript. We recommend usage of list comprehension:
```python
lowerList = [word.lower() \
         for word in inputList]
```

They are both more efficient than simple `for` loop statement.

---
## Practice

Use map to modify a list of strings such that all its elements are uppercase letters:

```python
strings = ['a', 'e', 'i', 'o', 'u']

upperCase = ???(str.???, strings)
```

* map
* upper()
* string
* lower()
* zip

---
## Revision

What are the two methods that improve list iteration performance in python?

???

* map, list comprehension
* sort, map
* arrange, map
* list comprehension, sort
