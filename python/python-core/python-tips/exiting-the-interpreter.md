---
author: Ricardo
type: normal
category: tip
tags:
  - interpreter
links:
  - '[Interpreter](https://docs.python.org/3/tutorial/interpreter.html){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Exiting the Interpreter


---

## Content

The interactive interpreter can be closed conventionally using `CTRL-D`.

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

- sys
- exit()
- system
- close()
- quit()


---

## Revision

What is the key stroke for exiting python interpreter (REPL)?

???

- "CTRL-D"
- "Esc"
- "CTRL-E"
- exit()
