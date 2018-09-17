---
author: catalin

levels:

  - basic

  - beginner

type: normal

category: must-know


aspects:
  - introduction

---

# Dynamic Typing

---
## Content

Unlike in statically-typed programming language, Python variables are dynamically typed. That means that a variable (e.g. `x`) can take the value of a number, a string or even a function, but not at the same time.

Some people consider Python's dynamic typing a weakness as it can lead to hard to find bugs.

As said before, a variable can take different types of values:
```python
x = 'enki'
x = 3.14
def x():
  pass
```

In Python, variables do not represent a portion of computer's memory where their value is written, but *tags* pointing to object.

Keep in mind that it is a **bad practice** to use the same variable name for different data types. Instead, use meaningful names for
```python
# bad
x = 2.71
x = 'hey'
# good
e = 2.71
greeting = 'hey'
```

---
## Practice

What will the type of the `n` variable will be eventually?

```python
n = 'hello'
n = 9
n = 5.9
n = 4

print(type(n))
???
```

* int
* float
* string

---
## Revision

What will the type of `d` variable will be eventually?

```python
d = 'h'
d = 'hello world'

def d():
  pass

print(type(d))
```
???

* function
* type
* int
* string
* char
