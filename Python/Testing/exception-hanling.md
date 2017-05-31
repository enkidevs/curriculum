# Exception Hanling
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[link to learn more](https://docs.python.org/3/tutorial/errors.html)'

---
## Content

If we have a **code** that we are aware it might rise some **exceptions**, there is a way to **defend** your program. We need to insert that *problematic* snippet into a `try` block. After the `try` block we need to include an `except` statement followed by a block of **code** which **handles** the problem in the best possible way.

**Syntax**
```
try:
  #Here we write operations that
  #might rise exceptions
except ExceptionI:
  #If there is ExceptionI,
  #then execute this block.
except ExceptionII:
  #If there is ExceptionII,
  #then execute this block.
else:
   #If there is no exception,
   #then execute this block.
```
Important things we need to know about the **syntax**:

- One `try` statement can have multiple `except` clauses.
- A generic `except` clause, which would handle any **exception**, can be **defined**.
- After the `except` clauses, there comes a `else` statement who's code will execute **only** if there are no **exceptions**.

**Example**
Suppose we want to **write** some data to a file that was opened in `r` mode
```
try:
  fh = open("testfile", "r")
  fh.write("I want write this!")
except IOError:
  print("Error: can\'t find file")
else:
  print("Content was written in the file")

#Output:
#Error: can't find file
```

---
## Practice

Can a single handler deal with more than one exception?
???

* yes
* no
* depends on the exception

---
## Revision

A exception handler has `try`, `exception` and ??? clauses?

* `else`
* `if`
* `elif`
