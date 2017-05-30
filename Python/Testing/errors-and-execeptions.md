# Errors and Execeptions.
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[link to learn more](http://www.python-course.eu/python3_exception_handling.php)'

---
## Content

We can distinguish at least two types of **errors** in **Python**: **syntax errors** and **exceptions**.

**Syntax errors**, also known as **parse errors**, are the most common problem beginner programmers encounter while learning **Python**. The parser displays a little **arrow** pointing to the at the earliest point in the line where the **error** was detected.

```
def func():
value = 5
return value

#Parser message:

File "test", line 2
  eggs = 12
     ^
IndentationError: expected
         an indented block
```
Indentation in **Python** is very important. We want the **variable** to be assigned and **returned** in the function **body**. The **error** occurs because the assignment and the `return` statement must be **indeted** in order to take part of the `func()`'s body.

However, if the **code** is **syntactically** correct, we can still encounter **errors** when executing the program. **Errors** detected while **executing** the program are called **exceptions**. They aren't always **fatal** errors, sometimes we can **handle** them.

```
number = 10 + (10/0)

#Compiler message:

Traceback (most recent call last):
File "test", line 1
ZeroDivisionError: devision by 0
```

The **exception** message provides information about the **type** of the exception occurred and what caused it. In the first part of the **message** body displays, in a **stack traceback** form, the context where the **exception** happened. In the second part of the **message** body we find a `string` representing the **built-in exception** type(`ZeroDivisionError`), followed by some more explanations.

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

What are compile time errors called?
???

* `exceptions`
* `bugs`
* `errors`
* `syntax errors`
* `parse errors`
