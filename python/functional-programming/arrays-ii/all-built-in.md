---
author: stefkn
type: normal
category: must-know
links:
  - >-
    [Python 3 Documentation -
    all](https://docs.python.org/3.3/library/functions.html#all){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# The all Function


---

## Content

The `all` built-in function takes an iterable object and returns `True` if all the elements in the iterable object evaluate to `True`.

In practice, `all` checks if `bool(element) == True` for each element in the iterable object.

Take for example:

```python
print(all([True, True, False]))
#result = False
print(all([1, 2, 'abc', 'xyz', 3, 4, 'zzz', True]))
# result = True
print(all([" ", 'abc']))
# Result = True
print(all(["", 'abc']))
# Result = False
```

Woah! Why are `1` and `abc` evaluated as `True`?

This is called *truthiness*[1] in Python. Each type has specific rules regarding what boolean value they evaluate as. 

For example:
- non-zero numbers and non-empty strings will evaluate as `True`. 
- `0` and `""` will be evaluated as `False`.

The full details of truthiness are outside the scope of this lesson. For more information, see the Learn More section.


---

## Practice

What is the result of the execution of the following code snippet?

```python
print(all([" ", 'abc', 12, 145]))
```

???

- True
- False
- TypeError


---

## Revision

What is the result of the execution of the following code snippet?

```python
print(all([" ", 'abc', 12, 145, '']))
```

???

- False
- True
- TypeError


---

## Footnotes

[1:Python Truthiness]
*Using the `bool` built-in function, we can check the truthiness of any object in Python. The truthiness rules can be examined at length in the second link in the Learn More section. Truthiness can be a useful shortcut when performing operations on non-boolean types.*
 
