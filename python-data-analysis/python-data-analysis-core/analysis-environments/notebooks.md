---
author: Stefan-Stojanovic

type: normal

category: how-to

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# What Are Notebooks?

---
## Content

Notebooks are interactive documents[1] that let you combine code with other visual elements such as text, charts, and images.

As long as you have a link to a notebook you can share it with your team or modify it from any computer.

You and anyone you've shared your notebook with can collaborate on the notebook by writing parts of it or leave discussion comments.

Notebooks let you mix code, text and images in any order you like, and each piece can be tested independently.

> ❗ Running code out-of-order may have unintended effects[2] as notebooks run as whole, top to bottom.

We'll show you how to create a notebook on Jupyter Lab in the next insight.

---
## Practice

Notebooks are documents that support ??? 

- various elements such as code, text and images, and more
- only code and images


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

[1: Notebook example]
Here's a notebook containing a line of code, some Markdown text, and an image.

![notebook-writing](https://img.enkipro.com/b0cf77ab69e42faf8e771314ea5c4a46.png)

And here's how the notebook looks when we run it:

![notebook-running](https://img.enkipro.com/bf0e7814a79f2764f337137772d133ae.png)

[2:Unintended Consequences]

Imagine you have this code:
```python
# Line 1
x = 1

# Line 2
x = x + 1

# ...
# Something in between 

# Line 57
x = "something else"
```

If you run the lines in order up to line 57, everything will work as intended. However, if after line 57 you run line 2 without running line 1 first, you will get an error.

This is because now `x = "something else"` and the line 2 code would be:
```python
x = "something else" + 1
```

Which will create an error:

`TypeError: can only concatenate str (not "int") to str`

So be careful when re-running pieces of code.
