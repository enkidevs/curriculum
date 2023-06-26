---
author: kapnobatai136

tags:
  - discussion

type: normal

category: must-know
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Functions are powerful

---
## Content

Functions are one of the most powerful tools that a programmer can use.

Imagine we're coding a robot chef 🤖. There might be 50 different scenarios where it needs to turn on the oven! 

Making a function for turning on the oven can make our life much easier for several reasons:

- **Reusability**
  Instead of rewriting all the oven instructions 50 times, we can write one function and just call that function whenever we need

- **Parameters**
  Sometimes we want the oven at 350 degrees, and sometimes we want it at 400. We can have our oven function take in a temperature variable as input.

  Then we can use the same function for every temperature! We call these inputs parameters.


- **Readability**
Functions, with helpful names, can make reading our code much easier. Take for instance:
```python
turn_on_oven(temperature=350)
put_in_tray()
```
We can easily see what is going on from the function names.

Without the functions, we might instead have hundreds of lines of code that are hard to decipher!

