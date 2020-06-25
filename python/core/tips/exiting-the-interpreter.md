---
author: Ricardo

levels:

  - basic

  - beginner

type: normal

category: tip

tags:

  - interpreter

aspects:
  - introduction

links:

  - '[docs.python.org](https://docs.python.org/2/tutorial/interpreter.html){website}'


---

# Exiting the interpreter

---
## Content

The interactive interpreter can be closed conventionally using _CTRL-D_.

However, this can also be accomplished programmatically:

```python
>>> raise SystemExit
```

or

```python
>>> import sys
>>> sys.exit()
```

or

```python
>>> quit()
```

---
## Practice

Fill in the snippet such that it will exit the interpreter:

```python

import ???
sys.???
```

* sys
* exit()
* system
* close()
* quit()

---
## Revision

What is the key stroke for exiting python interpreter (REPL)?

???

* "CTRL-D"
* "Esc"
* "CTRL-E"
* exit()
