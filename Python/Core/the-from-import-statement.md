# The from...import statement.
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[link to learn more](https://www.tutorialspoint.com/python3/python_modules.htm)'

---
## Content

To refer to **items** from a **module** within your program's **namespace**[1], we use the `from...import` statement.
In this construction, you can specify which **definitions** to reference directly.

Let's `import` the `add` method from `my_adder` module we defined before:

```
from my_adder import add

print(add(3,4))

# Stdout: 7
```

Using the `from...import` construction allows you to **reference** the defined elements of a **module** within our program’s **namespace**, letting us avoid dot notation (`my_adder.add(3,4)`) and avoid importing the whole module when it's not necessary.

**Note** there is one more construction ("wildcard imports") available: `from...import *` which means, from **module_name** import every **item**. However, **wildcard imports** should be avoided, as they make it unclear which **names** are present in the **namespace**, confusing both **readers** and many **automated tools**.

---
# Footnotes

[1: namespace]
As you already know, in **Python* everything (literals, lists, dictionaries, functions, classes, etc.)  is an **object**. All these objects are referred to using a name. **Namespace** maps all **objects** to their **name**.

---
## Practice

Does the `from...import` construction import the whole module?
???

* No.
* Yes.
* Not specified.

---
## Revision

What is the syntax for importing all items from a module?
???

* `from...import *`
* `from...import all`
* `import everything from ...`
