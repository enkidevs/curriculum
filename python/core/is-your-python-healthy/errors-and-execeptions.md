---
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know
aspects:
  - introduction
  - workout
  - deep
standards:
  python.native-types-operations.10: 10
  python.identify-python-syntax.2: 10

links:

  - '[More about errors and exceptions](http://www.python-course.eu/python3_exception_handling.php){website}'


---

# Errors and Excpetions

---
## Content

We can distinguish at least two types of errors in Python: **syntax errors** and **exceptions**.

**Syntax errors**, also known as **parse errors**, are the most common problem beginner programmers encounter. In their case, the parser displays a little **arrow** pointing to the first character where the error was detected:
```python
def func():
value = 5
return value

# File "test", line 2
#   value = 12
#      ^
# IndentationError: expected
#         an indented block
```

Indentation in Python is very important. We want the **variable** to be assigned and returned in the **function body**. As the error states, we need to properly indent the code:
```python
def func():
    value = 5
    return value
```

However, even if the code is *syntactically correct*, we can still encounter errors when executing the program. Errors detected while executing the program are called **exceptions**. There are types of exceptions which cause the program to stop executing and types of exceptions which can be handled.
```python
number = 10 + (10/0)

# Traceback (most recent call last):
# File "test", line 1
# ZeroDivisionError: division by 0
```

The **exception message** provides information about the type of the exception occurred and what caused it.

The **message body** displays:
- the context where in our code the exception was encountered;
- detailed information about the exception we encountered in traceback form.

---
## Practice

Based on its description, what's the error the parser is most likely to throw?
```python
def sum():
  return 1 + '10'
```
???


* TypeError: can't convert int to str implicitly
* NameError: variable was not defined
* ZeroDivisionError: devision by 0
* RuntimeError: any other error that can't be categorised
* The code works fine, there is no error

---
## Revision

Which of the following is an alternative name for compile time errors?
???


* `exceptions`
* `bugs`
* `errors`
* `syntax errors`
* `parse errors`
