# The from...import statement.
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[more about from...import](https://www.tutorialspoint.com/python3/python_modules.htm)'

---
## Content

Imagine you only need to use one function from a **module**. There is no need to `import` it entirely as you can `import` only an **item** from it.

To refer to **items** from a **module** within your program's **namespace**[1], we use the `from...import` statement.
In this construction, you can specify which **definitions** to reference directly.

Consider the following module:

```
# my_funcitons.py

def hello(what):
    text = "Hello, " + what
    print(text)
def cube(x):
    return(x**3)
def quad(x)
    print(x**4)
```

If we chose to use the default `import` statement presented before=:

```
import my_funcitons

a = my_funcitons.cube(3)
print(a)
my_funcitons.hello("Seba")

# Output:
# 27
# Hello Seba
```

If we chose to use the `from ... import` statement:

```
from my_funcitons import cube

cube(3)

# Output: 7
```

**Note** there is one more construction ("wildcard imports") available: `from...import *`. This means, from **module_name** import every **item**. However, **wildcard imports** should be avoided, as they make it unclear which **names** are present in the **namespace**, confusing both readers and many automated tools.

To end with, using `from ... import` statement deos not save memory. It exacutes and caches the entire module just like regular `import` statement. So there is no correct pattern of destinguishing between these two, it depends on the developer's prefferences.

---
## Footnotes

[1: namespace]
As you already know, in Python everything (literals, lists, dictionaries, functions, classes, etc.)  is an **object**. All these objects are referred to using a name. **Namespace** maps all **objects** to their **name**.

---
## Practice

Would this code snippet run without errors?
```
import my_funcitons

x = cube(5)
print(x*2)
```
???

* No, because the function is missused
* Yes, because we imported the `my_funcitons` module
* It will run but throw exceptions


---
## Revision

Does the `from...import` construction import the whole module?
???

* Yes
* No
* Not specified
