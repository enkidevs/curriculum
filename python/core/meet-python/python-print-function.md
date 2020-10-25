---
author: UmbralReaper
tags:
  - introduction
type: normal
category: must-know
links:
 - >-
   [Print Function Documentation](https://docs.python.org/3.9/library/functions.html#print){website}

---

# Print Function

---

## Content

In the last insight we looked at using the `print` function. The print function takes the general form:

```python
print(*objects, sep=' ', end='\n')
```

where `objects` is the data to be printed, `sep` is what separates the data when multiple arguments are given, and `end` is a suffix. '\n' is a hidden character that tells your computer to start a new line.

Here are some example inputs and outputs: 

```python
>>> print('a', 'line', 'of', 'code')
# a line of code
>>> print('a', 'line', 'of', 'code', sep='-')
# a-line-of-code
>>> print('a', 'line', 'of', 'code', end='!!')
# a line of code!!
```

---

## Practice

What does the following code snippet print:

```python
>>> print('big', 'small', sep=' or ')
```

???

- big small
- big-small
- big or small
- bigsmall