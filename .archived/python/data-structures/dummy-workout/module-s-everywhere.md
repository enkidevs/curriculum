---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

notes: >
  The return statement used in the module is not required. Works the same
  without it. Other rewrites to code and text done.

links:

  - >-
    [docs.python.org](https://docs.python.org/3.5/library/stdtypes.html#modules){website}

---
# `Module`s everywhere!

---
## Content

Whether being used for *easier maintenance*, *scripting*, *logical organization* of code or even for *avoiding repetition*, `modules` are a  fundamental structuring mechanism for any Python application which is more than a few lines of code.

`Modules` are basically files with data, function and class definitions that can be **imported** in other modules or in the *main module*. They can also contain statements at global scope, that are executed when the module is imported or run.

Sample module:
```python
#my_module.py file
def greet(name):
  print("Enki says hello,", name)
```
To use it the `import` statement can be used (the optional `as` clause renames the imported module):
```python
import my_module as mod
mod.greet("Craig")
# prints 'Enki says hello, Craig'
```
To import a single definition (function, class or variable), the `from` keyword is used:
```python
from my_module import greet
greet("Craig")
# prints 'Enki says hello, Craig'
```
It's possible to import all definitions:
```python
from my_module import *
greet("Craig")
# prints 'Enki says hello, Craig'

```
but this is not considered a good practice, and isn't used except in a few special cases.

---
## Practice

Import `python_module` and name it `python_mod` :

```python
# python_module.py file 
def favourite(topic): 
   print("Your topic is: ,", topic) 
   
??? python_module ??? python_mod 
python_mod.favourite("Python") 
``` 

* import 
* as
* inherit
* declare
* named
* new

---
## Revision

Modules are files which can be ??? in other modules or in the main module. 

* imported
* inherited
* used