# Debugging with print()
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[more about debugging](https://pythonconquerstheuniverse.wordpress.com/2009/09/10/debugging-in-python/)'

---
## Content

It doesn't matter how experienced a programmer is, there will always be mistakes in his **code**.

Debugging means understanding what is going *wrong* with the code. There are many ways to debug a program, but we will focus on the most basic one in this insight. Debugging using the `print()` statement.

Usually, developers start with printing everything for a better understanding. Basically what happens is: we look at the **values** of **variables** at specific **times**.

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

Let's suppose we wanted `"Welcome!"` to be printed. In this simple case, we have only an `if` statement to check. A **useful trick** for debugging is printing the value of `x` and try to follow the code with that value in mind.

```
1  def foo():
2    return 6
3  x = foo()
4  print("Line 4, x= ", x)
5  while(True):  
6    x += 1
7  print("Line  7, x=", x)
8  if x > 19:
9  print("Line 9, x=", x)
10 print("Welcome!")

# Output:
# Line 4, x=8
```

Now we know that `x` was initialised with value `8` from `foo()`. The bug here is that the while condition will always be `True`. We can see that the while is causing problems as just the first print produces output.

---
## Practice

What value do you think will be printed at `print("Line 6:", x)`?
```
def counter(x):
  print("Line 2:", x)
  while x > 0:
    print(x)
    x += 1
  print("Line 6:", x)

counter(3)
```
???

* The program will get stuck in the while loop.
* 0
* 3

---
## Revision

Name an ad-hoc method that can be used for debugging?
???

* using `print()`
* The only way to debbug a python program is importing a debugging specific module
* Python doesn't support debugging
