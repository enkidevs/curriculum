---
author: tommarshall

tags:

  - introduction

levels:

  - beginner

type: normal

category: tip

inAlgoPool: false
aspects:
  - introduction

standards:
  python.native-types-operations.0: 10

links:

  - '[Use cases](http://kracekumar.com/post/22512660850/python-in-operator-use-cases){website}'
  - '[Sequence types](https://docs.python.org/3/library/stdtypes.html#sequence-types-list-tuple-range){website}'


---

# The `in` operator

---
## Content

Python's `in` operator is a *membership operator* and can be used to check whether an object exists inside a container of objects--for example, a list.

It evaluates to true if it finds the specified variable in the container, and false if it doesn't.

Here's an example of the `in` operator searching for a value in a list:

```python
x = 5
nums = [1, 2, 3, 4]

# membership operator check using *in*
if x in nums:
    print('Found!')
else:
    print('Not found!')


```

Other iterable sequence types include tuples and strings. When the `in` keyword is used with a string, Python will check for any sequence of matching consecutive characters (called a substring). So, `'p' in 'poppy'` evaluates to true, and so does `'py' in 'poppy'`, but `'ppp' in 'poppy'` evaluates to false, because there is no matching consecutive sequence of characters.

---
## Practice

Complete the following code snippet to check for the existence of the `letter` 'p' in `my_string`, returning True is the string contains the letter p and False if it does not:

```python
letter = 'p'
my_string = 'stop, collaborate and listen'

if letter ??? my_string:
    print(???)
else:
    print(???)
```

* in
* True
* False
* is
* find

---
## Revision

The `in` operator evaluates to ??? if it finds the specified variable in the ???.


* true
* sequence
* false
* tuple
* map
