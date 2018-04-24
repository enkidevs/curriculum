---
author: Ricardo

levels:

  - basic

  - beginner

type: normal

category: tip

tags:

  - interpreter


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
>>> sys.exit
```

or

```python
>>> quit()
```

