---
author: Stefan-Stojanovic

type: normal

category: must-know

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# IPython vs Shell vs Script

---
## Content

### IPython

The Python language comes with a basic interpreter and a [REPL](https://www.enki.com/glossary/general/repl) that lets us write and run Python programs.

iPython is an enhanced version of that with user-friendly features such as:
- Auto-completion
- Support for Data Visualization
- Multi-line editing
- Syntax highlighting
- and more

The IPython shell is thus usually the recommended shell as it runs your Python code just like the normal Python shell does while also providing a richer set of features on top[1].

### Shell vs Terminal vs Scripts

Shells are command-line tools used to execute code.

Terminals are interface sessions on the computer that we use to communicate with shells. We send input (commands) into and receive output (results) out of the shell via a terminal.

The IPython interpreter, as well as the basic Python interpreter, are actually interactive shells that are accessed through the terminal via the `python`/`ipython` commands.

Scripts are files with runnable code that you can use for easier execution, automation, and more. 

So basically, we type code in a terminal that then sends that code to the command-line tool(shell) which then translates and executes that code for us.

> 💡 Scripts are executed in the same way as regular, command-line code.


---
## Practice

??? are command-line tools used to execute code.

??? are pieces of runnable code used for automation, easier execution, and more.

??? are sessions on the computer used to communicate code to shells.

- Shells
- Scripts
- Terminals

---
## Revision

When you put some runnable code in a file for easier execution, what do you call that file?

A ???.

- script
- terminal
- text
- interpreter

---
## Footnotes
[1: Multi Line Execution]

Here is the same code run on the basic interpreter vs IPython:

Basic interpreter:

![windows-10-example](https://img.enkipro.com/cb342ec6c5fb4860fee889d907ee176b.png)

IPython:

![ipython-example](https://img.enkipro.com/02420b736677cad5a5d5d8bcaac54bf4.png)

> 💡 In iPython, you can re-run any part of code you've already run with or without modification to the code.


iPython lets us store multi-line code blocks behind special `Line [N]` variable names. If you look at the iPython example above, all of the code was run on `Line [1]`. This lets us split code into sections and re-run or re-use any section at any time.

On the other hand, in the regular interpreter, we had to write all lines of code one by one.

In any terminal, pressing the ⬆️ key would give us our last executed line.

If we press ⬆️ in iPython, it would give us last executed `Line`.

> ❗ The multi-line editing feature is not available within the iPython terminal and only available in notebooks (more on this to come later)

You can think of notebooks as interactive Python environments that can combine code execution, rich text, charts, and rich media. 
