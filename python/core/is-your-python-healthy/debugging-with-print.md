---
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know
aspects:
  - introduction
  - workout 
standards:
  python.identify-python-syntax.1: 10

links:

  - '[More about debugging](https://pythonconquerstheuniverse.wordpress.com/2009/09/10/debugging-in-python/){website}'


---

# Debugging

---
## Content

No matter how experienced programmers are, there will always be mistakes in their **code**.

Debugging means understanding what is going *wrong* with the code. There are many ways to debug a program, but we will focus on the most basic one in this insight: debugging using the `print()` statement.

Usually, developers start by printing everything for a better understanding: **watching** how **variables**' values change over time.

Consider the following example:
```
1 def foo():
2   return 6
3 x = foo()
4 while(True):    
5   x += 1
6 if x > 19:
7  print("Welcome!")
```

Let's suppose we wanted `"Welcome!"` to be printed. In this simple case, we have only an `if` statement to check. A **useful trick** for debugging is printing the value of `x` and following the execution of the code:
```
1  def foo():
2    return 6
3  x = foo()
4  print("Line 4, x= ", x)
5  while(True):  
6    x += 1
7  print("Line  7, x=", x)
8  if x > 19:
9   print("Line 9, x=", x)
10  print("Welcome!")

# Line 4, x=6
```

Now we know that `x` was initialized with value `6` because of `foo()`. The bug here is that the while condition will always evaluate `True` and the program is stuck in an infinite loop: we can assume that because the second `print` statement is never called.

---
## Practice

What value will be printed by `print("Line 6:", x)`?
```
def counter(x):
  print("Line 2:", x)
  while x > 0:
    print(x)
    x -= 1
  print("Line 6:", x)

counter(3)
```
???


* 0
* 3
* 1
* 6
* Nothing, the program is stuck in an infinite loop

---
## Revision

Which of the following is an ad-hoc debugging method?

???


* print()
* debugging modules
* Python doesn't support debugging
