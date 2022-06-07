---
author: emmab
type: normal
category: feature
links:
  - >-
    [Dictionary
    methods](https://www.programiz.com/python-programming/dictionary){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Dictionary Methods I


---

## Content

Python has tons of built-in methods for dictionaries. Let's explore some of the most commonly used!

Consider the following dictionary:

```python
square_numbers = {
  1: 1,
  2: 4,
  3: 9, 
  4: 16, 
  5: 25
}
```

- `clear()` removes all items from the dictionary

```python
square_numbers.clear()

print(square_numbers)
# {}
```

- `copy()` returns a **shallow copy**[1] of the dictionary

```python
new = square_numbers.copy()

print(new)
# {1: 1, 2: 4, 3: 9, 4: 16, 5: 25}
```

- `items()` returns a `list` of the dictionary items expressed as tuples `(key, value)`

```python
square_numbers.items()

print(square_numbers.items())
# dict_items([(1, 1), (2, 4), (3, 9), (4, 16), (5, 25)])
```


---

## Practice

Complete the following code snippet to make a duplicate of the variable `my_house` called `new_house`:

```python
my_house = {'bedrooms': 2, 'bathrooms': 2, 'garden': True}

new_house = ???.???
```

- `my_house`
- `copy()`
- `clone()`
- `copy`
- `duplicate()`


---

## Revision

What's the correct method to return the contents of a dictionary as a `list` of `tuples`?

```python
english_to_french = {'apple': 'pomme', 'orange': 'orange'}

english_to_french.???
# [('orange', 'orange'), ('apple', 'pomme')]
```

- `items()`
- `contents()`
- `keys()`
- `reduce()`


---

## Footnotes

[1:Shallow Copy]
Shallow copies duplicate the minimum amount necessary. Let's say we have a collection named `a`. If we were to make a **shallow copy** of it (named `b`), we would say that `b` represents a copy of `a`s structure, but not `a`s elements.
