---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

---

# Test Yourself

---

## Content

Now that you've learned about modules, it's time to practice!

How would you create a function in one file and then import and call that function in a different file?

It's up to you to choose what the function will be about. It can be anything; a mathematical operation on two numbers, a simple print statement, a conditional operation, and so on... 

To achieve this, you should use the following concepts:
- importing modules (`import`, `from...import`...)
- function creation (`def...`)

As for the file name, add it as a comment at the top of the code block where you've defined the function.

For instance:

```py
# my_first_module.py

# code here
```

If you're not sure what to do, check out this footnote[1].

When you're ready, leave a comment here with your submission. If you don't want to participate, you can always check the comment section to see what the other users come up with.

> 💡 Before you submit your program, take a look at [how you can format your comments](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit, the implementation is up to you.


---

## Footnotes

[1: Hints]

Start by creating a function for anything you want:

```python
def hello(x):
  return print("Hello",x)
```

Then, add a comment at the top specifying the name of the file.

```python
# my_first_module.py

def hello(x):
  return print("Hello",x)
```

Then, create a new code block or make some space in the first one where you will import and call the function.

```python
# Example 1
import my_first_module

my_first_module.hello("Stefan")
# Hello Stefan
```

```python
# Example 2
from my_first_module import hello

hello("Stefan")
# Hello Stefan
```
