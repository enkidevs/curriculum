---
author: emmab
tags:
  - introduction
type: normal
category: must-know
links:
  - >-
    [Python Naming
    Conventions](https://www.python.org/dev/peps/pep-0008/#prescriptive-naming-conventions){documentation}
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

# Variables


---

## Content

Python uses variables to store data in memory. Think of variables as *containers that hold data* which can be changed later in the program.

For example:

```python
number = 10
number = 100
```

Initially the value of `number` was `10`. Later it was changed to `100`.

```python
print(number)
# 100
```

Python is a case-sensitive language and variable names should use snake case[1], like so:

```python
this_is_a_long_variable_name
```

> Always give variables a name that makes sense. 

While `c = 10` is valid, writing `count = 10` would make more sense. It is easier to figure out what the variable represents when you revisit your code and for other programmers on your team.


---

## Practice

Complete the following code to print 'Python' to the screen:

```python
??? ??? '???'
print(language)

# Python
```

- language
- =
- Python
- 'python'
- python


---

## Revision

A variable is a ??? for ???.

- container
- data
- function
- values


---

## Footnotes

[1:Snake case]	
Snake case is a writing convention where words are separated by underscores. It typically uses all lower case letters.
