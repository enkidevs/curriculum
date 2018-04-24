---
author: abingham

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

tags:

  - context-managers

  - resource-managment

links:

  - >-
    [docs.python.org](https://docs.python.org/2/library/contextlib.html#contextlib.closing){website}

---
# Use `contextlib.closing` to automatically call `close` on objects in a `with` statement

---
## Content

`contextlib.closing` takes an object and returns a *context manager*. This automatically calls `close` on that object at the end of a `with` block. 

This is useful to implementing automatic cleanup of resources which don't implement the *context-manager protocol*. 

For example, this code:
```python
from contextlib import closing
with closing(some_resource()) as res:
   res.do_something() 
```

Is roughly equivalent to:
```python
res = some_resource()
try:
    res.do_something()
finally:
    res.close()
```

Of course, this requires that the object has a `close` method.