---
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know
aspects:
  - introduction
  - workout
standards:
  python.modules.0: 10
  python.modules.2: 10

links:

  - '[More on modules](https://docs.python.org/3/tutorial/modules.html){website}'


---

# What are modules?

---
## Content

When you quit the Python interpreter and open it again, the *functions* and *variables* you defined before are lost.

If you want to write a more *complex program*, you are better off using a *text editor* to prepare the **input** for the interpreter. This is known as creating a **script**.

As your program's *size* gets longer you might want to split it into several **files**. You may also want to use a *handy function* that you’ve written in several **programs** without copying its **definition** into each program.

To support all these, Python provides **modules**[1]. Simply, a **module** is a file consisting of Python **code** with **definitions** and **statements**. In a **module** you can find runnable code defining:
- functions
- classes
- variables

Each module, in order to be recognized by the interpreter, has to have the `.py` extension appended. By convention, modules get their own names from the file they were written in (dropping the extension).

Consider the python file `my_adder.py`. Plainly, this **module**'s name is `my_adder`.

```python
# consider module in adder.py:

def add(a, b):
    sum = a + b
    print("The sum is: ", sum)
    return sum
```

Note that within each module, its name is dynamically available through the global variable `__name__`.

---
## Practice

What is the extension specific to Python **modules**?
???


* `.py`
* `.md`
* `.sh`
* `.mod`
* `.pymod`
* `.python`

---
## Revision

Which of the following options would better describe a module in Python?
???


* A file with python code - definitions and statements
* A library exposing an API
* A file with functions written in Python

---
## Footnotes
[1:modular programming]
Modular programming is a software design technique that emphasizes separating the functionality of a program into independent, interchangeable modules, such that each contains everything necessary to execute only one aspect of the desired functionality.
