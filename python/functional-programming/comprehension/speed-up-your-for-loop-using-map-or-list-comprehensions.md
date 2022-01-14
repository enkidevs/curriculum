---
author: Aaron7Sun
type: normal
category: tip
tags:
  - speed-up-code
links:
  - >-
    [docs.python.org](https://docs.python.org/2/library/functions.html#map){website}
notes: ''
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

# Speed up your for loop using map() or list comprehensions


---

## Content

The `for` loop interpreter overhead can be huge. So here `map()` functions like a `for` loop in C code.  

Example:

If you need to lowercase all the input strings:

```python
lower_list = []
for word in input_list:
  lower_list.append(word.lower())
```

Instead, you can use `map()` to push the loop into compiled C code:

```python
lower_list = map(str.lower, input_list)
```

Also, in Python 2.0 or above, there are list comprehensions. List comprehension are the "pythonic" way to approach this situation. `map()` is more often used in JavaScript. We recommend usage of list comprehension:

```python
lower_list = [word.lower() for word in input_list]
```

They are both more efficient than simple `for` loop statement.


---

## Practice

Use list comprehension to modify a list of characters such that all its elements become uppercase:

```python
strings = ['a', 'e', 'i', 'o', 'u']

lower_list = [word.??? for word in ???]
```

- upper()
- strings
- string
- lower()
- zip


---

## Revision

What are the two methods that improve list iteration performance in python?

???

- map, list comprehension
- sort, map
- arrange, map
- list comprehension, sort
 
