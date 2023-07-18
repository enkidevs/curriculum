---
author: SebaRaba
type: normal
category: must-know
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

# Debugging


---

## Content

No matter how experienced programmers are, there will always be mistakes in their **code**.

Debugging means understanding what is going *wrong* with the code. There are many ways to debug a program, but we will focus on the most basic one in this insight: debugging using the `print()` statement.

Usually, developers start by printing everything for a better understanding: **watching** how **variables**' values change over time.

Consider the following example:

```python
def foo():
  return 6
x = foo()
while(True):    
  x += 1
if x > 19:
 print("Welcome!")
```

Let's suppose we wanted `"Welcome!"` to be printed. In this simple case, we have only an `if` statement to check. 

A **useful trick** for debugging is printing the value of `x` and following the execution of the code:

```python
def foo():
  return 6
x = foo()
print("Line 4, x= ", x)
while(True):  
  x += 1
print("Line  7, x=", x)
if x > 19:
  print("Line 9, x=", x)
  print("Welcome!")

# Line 4, x=6
```

Now we know that `x` was initialized with value `6` because of `foo()`. 

The bug here is that the `while` condition will always evaluate `True` and the program is stuck in an infinite loop: we can assume that because the second `print` statement is never called.


---

## Practice

Given the following code:
```python
def counter(x):
  print("Initial value:", x)
  while x > 0:
    print(x)
    x -= 1
  print("Final value:", x)
```

What would the output be if we plug in `3` into the `counter()` function?

```py
counter(3)

# Initial value: 3
# ???
# ???
# ???
# Final value: ???
```

- 3
- 2
- 1
- 0


---

## Revision

Which of the following is an ad-hoc debugging method?

???

- print()
- debugging modules
- Python doesn't support debugging
 
