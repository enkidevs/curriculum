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
**Debugging** means understanding what is going wrong with the code. There are many ways of **debugging** a program, but we will focus on the easiest one in this insight. This is debugging using the `print()` statement.

Basically what happens is we look at the **values** of **variables** at specific **times**. In order to be able to **debug** your code you need a good understanding. **Debugging** helps you identify the exact cause of the **problem**. However, there is no problem if you don't have the smallest idea where it might come from. Usually, developers start with printing everything for a better understanding.

We will use the following example:
```
1 def foo():
2   return 6
3 x = foo()
4 while(True):    
5   x += 1
6 if x > 23:
7  print "Welcome!"
```
Let's suppose that when we wrote this snippet it seemed clear that "Welcome!" won't be **printed**. We want to debug this code now. An useful **trick** you can use when debugging with `print()` is to print the **variable**'s value together with the **line number**.

```
1  def foo():
2    return 8
3  x = foo()
4  print("Line 4, x= ", x)
5  while(True):  
6    x += 1
7  print("Line  7, x=", x)
8  if x > 19:
9  print("Line 9, x=", x)
10 print("Welcome!")

#Output
Line 4, x=8
```
Now we know that `x` was initialised with value `8` from `foo()`. The bug here is that the while condition will always be `True`. We can see that the while is causing problems as just the first print produces output.

---
## Practice

What would be useful to include in our print statements?
???

* The line number.
* The class where the variable is used.
* What libraries we have imported in that class.

---
## Revision

A python tool that would also work for debugging is?
???

* using `print()`
* importing a module
* Python doesn't support debugging
