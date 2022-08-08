---
author: emmab
tags:
  - introduction
type: normal
category: tip
links:
  - >-
    [Use
    cases](http://kracekumar.com/post/22512660850/python-in-operator-use-cases){website}
  - >-
    [Sequence
    types](https://docs.python.org/3/library/stdtypes.html#sequence-types-list-tuple-range){website}
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

# The in operator


---

## Content

Python's `in` operator is an example of a *membership operator*[1]. 

It can be used to check whether a value exists *inside another object*.

It evaluates to `True` if it finds the specified value, and `False` if it doesn't.

Here's an example of the `in` operator searching for a string pattern inside a longer string:

```python
string = 'Python'
sentence = "Python's the best language to learn!"

if string in sentence:
  print('I agree!')
else:
  print('Hmm, not sure I agree.')

# I agree!
```

When the `in` keyword is used on a string, Python will check for any sequence of matching substrings.


---

## Practice

Complete the following code snippet to print `'True'` if `letter` is in `my_string`, and `'False'` otherwise:

```python
letter = 'p'
my_string = 'stop, collaborate and listen'

if letter ??? my_string:
  print('???')
else:
  print('???')
```

- `in`
- `True`
- `False`
- `is`
- `find`


---

## Revision

The `in` operator evaluates to ??? if it finds the specified value in the ???.

- `True`
- sequence
- `true`
- `false`
- condition


---

## Footnotes

[1:Membership operator]
Membership operators are used to test if a variable is present in an object, such as a string.
 
