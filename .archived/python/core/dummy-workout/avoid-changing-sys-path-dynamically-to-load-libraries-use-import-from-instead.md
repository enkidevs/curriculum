---
author: Bruno

levels:

  - medium

type: normal

category: tip

links:

  - '[python.org](https://docs.python.org/2/tutorial/modules.html){documentation}'

  - >-
    [tutorialspoint.com](http://www.tutorialspoint.com/python/python_modules.htm){tutorial}

---
# Avoid changing `sys.path` dynamically to load libraries. Use `import from` instead.

---
## Content

Instead of:
```
import sys
sys.path.append("./libs/")
import mylib
```
Prefer:
```
from libs import mylib
```
For this to work, you need to have an `__init__.py` file under `./libs`, but this can just be an empty file.