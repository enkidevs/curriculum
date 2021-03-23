---
author: emmab
tags:
  - introduction
type: normal
category: must-know
links:
  - '[Download Python](https://www.python.org/downloads/){website}'
  - >-
    [Best Text
    Editors](https://www.programiz.com/python-programming/ide){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Python Environment


---

## Content

Python comes pre-installed on most operating systems. It can also be downloaded online for free.

Once installed, you can type `python3`, `python` or `py`[1] to run the **Python interpreter**[2] from the shell[3]:

```bash
python3
# Python 3.7.6
# (default, Dec 30 2019, 19:38:28)
# Type "help", "copyright", "credits" or
#  "license" for more information.
>>>
```

This gives you a local interactive environment where you can run Python code and output the results.

> The Python interpreter is your **playground**. So test things, go crazy!

It is the ideal place for testing out small pieces of code or calculations.

For example:

```bash
python3
>>> 3 * 4
# 12
>>>
```

> For anything longer than a few lines of code, it's much easier to use a text editor.

Some of the most popular text editors are Notepad, Atom, VIM, Sublime Text and Visual Studio Code.

We recommend [Visual Studio Code](https://code.visualstudio.com/Download) for beginners. 

Once you're using a text editor you can save files using a `.py` extension and then open them from the shell by running:

```bash
python3 myPythonFile.py
```

---

## Practice

Which of these commands will start the interactive Python interpreter?

```bash
???
```

- `python`
- `pyt`
- `-interactive_mode`
- `pythoni`


---

## Revision

The Python-specific file extension is:

```bash
???
```

- `.py`
- `.pyt`
- `.pip`
- `.python`


---

## Footnotes

[1:Launching The Interpreter]
Depending on the operating system or the Python version used, there are multiple ways in which you can start the interpreter.

You can check out all of these ways in the [official Python documentation](https://docs.python.org/3.9/tutorial/interpreter.html).

All you have to do is select the Python version in the top-left of the page:

![python-interpreter-docs](https://img.enkipro.com/cca8e134c009414c09ea957266b52ede.png)

[2:Python Interpreter]
The Python interpreter is the application that runs your Python script. 

The interpreter is a quick way to explore Python and try out code without creating a file. It is a Read-Eval-Print Loop, or REPL, a tool offered by many modern programming languages. 

To use it, you launch the Python interpreter with `python3`, `python` or `python -i` and type your Python code at the prompt. The interpreter evaluates the code you type and displays the results.

[3:Shell]
The shell, also known as the command line, is a program which processes shell scripts, like Bash. Shell scripts allow you to manipulate and navigate between files, execute programs, and print text. The shell is run through the terminal.
 
