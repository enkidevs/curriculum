---
author: Ricardo
type: normal
category: tip
tags:
  - generators
  - iterators
  - performance
links:
  - >-
    [Generators &
    Iterators](https://www.python-course.eu/python3_generators.php){website}
  - >-
    [Blog Post on
    Generators](http://book.pythontips.com/en/latest/generators.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Benefits of Using Generators


---

## Content

Generators are functions which behave like iterators, but can have better performance characteristics. These include:   

- Creating values on demand, resulting in lower memory consumption.

- The values returned are lazily generated. Hence, it is not necessary to wait until all the values in a list are generated before using them.

However, the set of generated values can only be used once.


---

## Practice

What will the output of the following code snippet be?

```python
def my_gen(number):
  number -= 1
  yield number
  yield number
  number += 1
  yield number

temp = my_gen(10)
print(next(temp))
print(next(temp))
```

???

- 9 9
- 9 8
- 9 10
- 10 9
- 10 10
- 10 8


---

## Revision

Because generators create values on demand, this results in ??? memory consumption.

- lower
- higher
 
