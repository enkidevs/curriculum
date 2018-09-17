---
author: stefkn

levels:

  - beginner

  - basic

  - medium

type: normal
aspects:
  - introduction
  - workout
  - deep
category: must-know

standards:
  python.use-iteration-protocol.1: 10

links:

  - '[Python 3 Documentation - all](https://docs.python.org/3.3/library/functions.html#all){website}'
  - '[Check truthiness in Python](http://csparpa.github.io/blog/2015/02/python-truthiness.html){website}'


---

# The `all` Built-in Function

---
## Content

The `all` function takes an iterable object and returns `True` if all the elements in the iterable object evaluate to `True`, or if the object is empty. It takes the form:

```python
all(iterable)
```

In practice, `all` checks if `bool(element) == True` for each element in the iterable object. For most primitive types this will evaluate to True, so:

```python
list3 = [1, 2, 'abc', 'xyz', 3, 4, 'zzz']
print(all(list3))
# result = True
```

It is important to keep in mind the usual caveats when using boolean evaluation in Python, such as the differences in evaluation with empty strings. The empty string evaluates to false, but anything else, even whitespace, evaluates to true. This is called *truthiness*[1] in Python, in that each type has specific rules regarding what boolean value they evaluate to. The details are outside the scope of this lesson; for more information see the Learn More section.

As an example, consider the following:

```python
print(all([" ", 'abc']))
# Result = True
print(all(["", 'abc']))
# Result = False
```

---
## Practice

What is the result of the execution of the following code snippet?

```python
print(all([" ", 'abc', 12, 145]))
```
???


* True
* False
* TypeError

---
## Revision

What is the result of the execution of the following code snippet?

```python
print(all([" ", 'abc', 12, 145, '']))
```
???


* False
* True
* TypeError

---
## Footnotes
[1:Python Truthiness]
*Using the `bool` built in function, we can check the truthiness of any object in Python. The truthiness rules can be examined at length in the second link in the Learn More section. As a general rule, nonempty objects are True and empty ones are False. For integers, 0 is False, anything else is True. Truthiness can be a useful shortcut when performing operations on these types.*
