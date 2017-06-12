# The import statement
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[more about import](https://www.digitalocean.com/community/tutorials/how-to-import-modules-in-python-3)'

---
## Content

You can use any Python **source file** as a **module** by executing an `import` statement in some other **Python source file**.

The `import` syntax looks like this:

```
import module1[, module2[, ... moduleN]
```

When the **interpreter** encounters a `import` statement, it imports that specific **module** inside, if it exists in the search path. A **search path** is a list of **directories** where the **interpreter** searches for a specific **module**.

We will `import` and use a **method** from the **module** we defined in the previous insight ("What are modules?"), `my_adder.py`:

```
# We need to import the module first:

import my_adder

# And now we can use methods defined
# in this module

result = my_adder.add(3,4)
print(result)
```

When the **snippet** above is **executed**, the following **stdout** will be generated:

```
# Stdout:

7
```

**Note** that a module is imported just **once** regardless of the times it was imported.

---
## Practice

What happens when you import the same module in the same file multiple times?
???

* The module will be imported once.
* The module will be imported multiple times.
* The `import` statement won't work.

---
## Revision

What is a search path?
???

* A list of directories.
* A single path leading you to a certain file.
* The path to your home directory.
