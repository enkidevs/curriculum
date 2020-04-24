---
author: tommarshall

tags:

  - introduction

levels:

  - beginner

type: normal

category: must-know
aspects:
  - introduction
inAlgoPool: false

standards:
  python.developer-environment.0: 10
  python.developer-environment.1: 10

---

# Python environment

---
## Content

Python comes pre-installed on most Linux distributions and is available as packages or installers on all other operating systems. Everything you need to install Python can be found on:
```
www.python.org/downloads
```

After installing Python, open a new terminal (Unix/MacOS) or PowerShell (Windows). Enter `python3` to run the Python REPL shell:
```bash
$ python3
# Python 3.5.2
# (default, Nov 17 2016, 17:05:23)
# [GCC 5.4.0 20160609] on linux
# Type "help", "copyright", "credits" or
#  "license" for more information.
>>> quit()
$
```
**REPL** stands for *Read-Eval-Print Loop*. This process evaluates each line of code you write and outputs the result.

You shouldn't use the REPL interpreter for longer snippets of code, however. It is much easier to write Python code using a text editor. There are a lot of options here, such as Atom, Emacs, Vim, Sublime or Visual Studio Code, each with its advantages and disadvantages. Visual Studio Code is a good option, as it was built on top of Atom's architecture, but avoids lots of overheads Atom doesn't. It is still highly customizable and much more responsive than Atom.

To run a Python file, which must have a `.py` extension, invoke a new terminal inside the directory that contains the file and write:
```bash
$ python3 myPythonFile.py
```

---
## Practice

The Python shell used in the terminal is called a ??? interpreter.

* REPL [Read Eval Print Loop]
* REPL [Read Eval Print Language]
* REPL [Real Evaluation Print Loop]
* RELP [Read Evaluate Loop Print]


---
## Revision

The Python-specific file extension is ???.


* `.py`
* `.pyt`
* `.pip`
* `.python`
