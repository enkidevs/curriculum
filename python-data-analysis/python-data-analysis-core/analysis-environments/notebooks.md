---
author: Stefan-Stojanovic

type: normal

category: how to

---

# What Are Notebooks?

---
## Content

Notebooks are documents that contain both programming code and elements like paragraphs, figures, links.

They can be shared with your team or anyone else to work interactively.

Notebooks are where the analysis for this course will be done.

As long as you have a link to a notebook you can modify it from any computer.

You and anyone you've shared your notebook with can also comment on any portion of the notebook.

They also work like *extended versions* of scripts.

Each piece of code can be run and tested independently from other code. However, you can also run all of the code at once.

> ❗ When running code out-of-order, while possible, it may have unintended effects[1] as notebooks run cumulatively.

Notebooks also support images that you can interact with and more.

All of the previously mentioned tools work with notebooks. Meaning, it doesn't matter which tool you choose to work on, you can still follow along.

> We will show you how to create a notebook on Jupyter Lab in the next insight.

---
## Practice

Notebooks are documents that ??? 

- support both text and code cells
- only support code cells


---
## Revision

Notebooks support interactive images.

???

Notebooks support only markdown cells. No programming code.

???

Notebooks are like scripts. You can execute the whole notebook using a single button.

???

If you have a sharable link to an online notebook you can modify it from any computer.

???

- True
- False
- True
- True
- False
- False

---
## Footnotes

[1:Unintended Consequences]

Imagine you have this code:
```python
# Line 1
x = 1

# Line 2
x = x + 1

# ...
# Something in between 

# Line 57
x = "someting else"
```


If you run the lines in order up to line 57, everything will work as intended. However, if after line 57 you run line 2 without running line 1 first, you will get an error.

This is because now `x = "something else"` and the line 2 code would be:
```python
x = "something else" + 1
```

Which will create an error:

`TypeError: can only concatenate str (not "int") to str`

So be careful when re-running pieces of code.