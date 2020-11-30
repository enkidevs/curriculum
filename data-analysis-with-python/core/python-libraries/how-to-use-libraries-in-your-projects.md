---
author: Stefan-Stojanovic

type: normal

category: how to

---

# How to Import Libraries?

---
## Content

> Here are two ways you can add libraries in Python.

The easiest, but repetitive one, is to import it in every console/notebook you create.

You can do so by first creating a new console/notebook. Then you need to add something like this:
```python
import numpy
import pandas as pd
...
```

This code should be at the top of your program.

Both imports above work the same. 

The `as` part means that pandas can be accessed through the alias `pd` keyword. You could also write `import pandas as blabla` but that would not be very productive and can be easily forgotten.

Another way of importing is a bit longer, but you only have to do it once. 

First, go to your User profile and locate the folder `.ipython`.

You will have another folder inside it called `profile_default`. 

Next in that folder, there should be a `startup` folder.

> If there is no `startup` folder, create one yourself.

Now, inside that folder, you need to add a file and name it however you want.

We will name it `startup.py` as it is easy to remember.

This file is where you will add all the imports you want for your Python programs.

> This file will be loaded before you even start a new notebook. 

So make sure to only put imports you want in all your notebooks in this file.

Adding an import to this file is done exactly the same way as adding the import to each file individually.

---
## Practice

Which keyword is used to add a library in Python?

???

- import
- activate
- use
- add

---
## Revision

Libraries can be added in a special file to be pre-loaded for every project?

???

- True
- False