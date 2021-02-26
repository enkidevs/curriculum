---
author: Stefan-Stojanovic

type: normal

category: how to

---

# IPython vs Python Shell vs Python Scripts

---
## Content

### IPython vs Basic intepreter

The Python language comes with a basic interpreter and a REPL[1] that lets us write and run Python programs.

iPython is an enhanced version of that with extra features that make the experience of running Python code more user-friendly.

iPython features:
- Auto-completion
- Support for Data Visualization
- Multi-line editing
- Syntax highlighting
- and more

> 💡 You can also re-run any part of code you've already run with or without modification to the code.

> ❗ The multi-line editing feature is not available within the iPython terminal. It is, however, available in any notebook that has iPython.

Here is the same code run on the basic interpreter vs IPython:

Basic interpreter:

[windows-10-example](https://img.enkipro.com/cb342ec6c5fb4860fee889d907ee176b.png)

IPython:

[ipython-example](https://img.enkipro.com/02420b736677cad5a5d5d8bcaac54bf4.png)

In the iPython example, all of the code was run on `Line [1]`. On the other hand, in the regular interpreter, we had to run five lines of code to achieve the same thing. (Not counting the two empty lines)

In any terminal, pressing the ⬆️ key would give us our last executed instruction.

If we press ⬆️ in iPython, it would give us the whole code as a single line. Whereas on the basic interpreter, we would have to execute the five lines one by one.

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