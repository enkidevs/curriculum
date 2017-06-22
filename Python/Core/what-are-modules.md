# What are modules?
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[more about modules](https://docs.python.org/3/tutorial/modules.html)'

---
## Content

When you quit the **Python** interpreter and open it again, the **functions** and **variables** you defined before are lost. Therefore, if you want to write a more complex program, you are better off using a **text editor** to prepare the **input** for the interpreter. This is known as creating a **script**.

As you **program**'s size gets longer you might want to split into in several **files** - a process called modularization[1]. You may want to use a **handy function** that you’ve written in several **programs** without copying its **definition** into each program.

To support all these, **Python** provides **modules**. A **module** is a **file** consisting of **Python** code. A **module** can contain runnable code and can define:
- funcitons
- classes
- variables

A **module** is a Python object with arbitrarily named attributes that you can bind and reference.

Consider the python file `my_adder.py`. Plainly, this **module**'s name is `my_adder`.

```
# To be able to run a python module
# it must have the .py extension
# Defining module my_adder.py:

def add(a,b)
    sum = a+b
    print("The sum is: ", sum)
    reutrn sum
```

---
## Footnotes

[1:modular programming]
Modular programming is a software design technique that emphasizes separating the functionality of a program into independent, interchangeable modules, such that each contains everything necessary to execute only one aspect of the desired functionality.

---
## Practice

What do we call like a python program that was written using a text editor instead of the python interpreter ?
???

* a script
* a class
* a function

---
## Revision

Is it right to say modules are objects in python?
???

* Yes
* No
* Not specified.
