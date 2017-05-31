# Debugging with `print()`
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[link to learn more](https://pythonconquerstheuniverse.wordpress.com/2009/09/10/debugging-in-python/)'

---
## Content

It doesn't matter how **experienced** a programmer is, there will always be **mistakes** in his **code**.
**Debugging** means understanding what is going wrong with the **code**. There are many ways of **debugging** a program, but we will focus on the easiest one in this **insight**. This is debugging using the `print()` statement.

Basically what happens is we look at the **values** of **variables** at specific **times**. In order to be able to **debug** your **code** you need a good understanding of it. **Debugging** helps you identify the exact cause of the **problem**, but you need to have an idea of where the problem comes from in order not to **print** all **variables** you use in your program.

We will use the following example:
```
1 def foo():
2   return 6
3 x = foo()
4 for i in [1, 2, 4, 6, 5]:     
5   x += i
6 if x > 23:
7  print "Welcome!"
```
Let's suppose that by the time we wrote this **code** it seemed clear in our heads that "Welcome!" won't be **printed**. We wan't to debug this **code** now. An useful **trick** you can use when debugging with `print()` is to print the **variable**'s value together with the **line number**.

```
1 def foo():
2   return 8
3 x = foo()
4 print("Line 4, x= ", x)
5 for i in [1, 2, 4, 5]:  
6   x += i
7 if x > 19:
8  print("Line 7, x=", x)
9  print("Welcome!")

#Output
Line 3, x=8
Line 7, x=20
Welcome!
```
Now we know that `x` was initialised with value `6` from `foo()`. Then we can see `12` was added to `x` in the `for` statement and in the end "Welcome!" is **printed** because `20 > 19`.
---
## Practice

Why is printing the same variable twice helpful when debugging?
???

* To see how a variable's value is updated.
* There is no reason why.
* For the final aspect of the output.

---
## Revision

What is the easiest way to debug a program in Python?
???

* using `print()`
* importing a module
* Python doesn't support debugging
