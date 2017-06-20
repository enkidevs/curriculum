# Errors and Execeptions.
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[more about errors and exceptions](http://www.python-course.eu/python3_exception_handling.php)'

---
## Content

We can distinguish at least two types of **errors** in **Python**: **syntax errors** and **exceptions**.

To highlight them, we have **syntax errors**, also known as **parse errors**. They are the most common problem beginner programmers encounter while learning **Python**. The parser displays a little **arrow** pointing to the first character where the **error** was detected.

```
def func():
value = 5
return value

#Parser message:

File "test", line 2
  value = 12
     ^
IndentationError: expected
         an indented block
```

Indentation in Python is very important. We want the **variable** to be assigned and returned in the **function body**. As the **error** states, we need to properly indent the code:

```
def func():
    value = 5
    return value
```

However, if the code is **syntactically correct**, we can still encounter errors when executing the program. Errors detected while executing the program are called **exceptions**. There are types of exceptions which cause the program to stop executing and types of exceptions which can be handled.

```
number = 10 + (10/0)

#Compiler message:

Traceback (most recent call last):
File "test", line 1
ZeroDevisionError: devision by 0
```

The **exception message** provides information about the **type** of the exception occurred and what caused it.

The **message body** displays:
- the context where in our code the exception was encountered;
- detailed information about the exception we encountered in traceback form.

---
## Practice

What type of error is present here:
```
def sum()
  1 + `10`
```
???

* TypeError: can't convert int to str implicitly
* NameError: variable was not defined
* ZeroDivisionError: devision by 0
* RuntimeError: any other error that can't be categorised
* The code works fine, there is no error

---
## Revision

Which of the following is an alternative name for compile time errors??
???

* `exceptions`
* `bugs`
* `errors`
* `syntax errors`
* `parse errors`
