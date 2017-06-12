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

When you quit the **Python** interpreter and open it again, the **functions** and **variables** you defined before are lost. Therefore, if you want to write a more **complex program**, you are better off using a **text editor** to prepare the **input** for the **interpreter**. This is known as creating a **script**.

As you **program**'s size gets longer you might want to split it in several **files**. You may also want to use a **handy function** that you’ve written in several **programs** without copying its **definition** into each program.

To support all these, **Python** implemented **modules**. Simply, a **module** is a **file** consisting of **Python** code. A **module** can contain runnable code and can define:
- funcitons;
- classes;
- variables.

Each **module** will have the name of the **file** it was written in with the `.py` suffix.

Consider the following example of a module definition:

```
# The naming convention for modules is:
# the name of the file with the .py suffix
# Defining module my_adder.py:

def add(a,b)
    sum = a+b
    print("The sum is: ", sum)
    reutrn sum
```

---
## Practice

What is the suffix Python modules end in?
???

* `.py`
* `.css`
* `.python`

---
## Revision

Can modules define functions?
???

* Yes
* No
* Not specified.
