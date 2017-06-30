# The import statement
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[More about import](https://www.digitalocean.com/community/tutorials/how-to-import-modules-in-python-3)'

---
## Content

You can use any Python **source file** as a **module** by importing it in another file.

Importing is achieved through the provided `import` statement whose syntax looks like:

```
import module1[, module2[, ... moduleN]
```

When the **interpreter** encounters a `import` statement, it imports that specific **module** inside, if it exists in the search path. A **search path** is a list of **directories** where the **interpreter** searches for a specific **module**.

We will `import` and use a method from the **module** we defined in the previous insight ("What are modules?"), `my_adder.py`[1]:

```
# We need to import the module first:

import my_adder

# And now we can use methods defined
# in this module

result = my_adder.add(3,4)
print(result)

# This will be the output: 7
```

**Note** that regardless the number of times you use the `import` statement on the same **module**, internally the code will be imported just once.

---
## Footnotes

[1:my_adder.py]
```
def add(a,b)
    sum = a+b
    print("The sum is: ", sum)
    reutrn sum
```

---
## Practice

What is missing from the following code snippet such that it will run without any errors?
```
import math

calculate = my_adder.add(324,35)
result = sqrt(calculate)
```
???

* `import my_adder`
* `print(calculate)`
* `float result`

---
## Revision

What happens if we use the `import` statement on the same module several times?
???

* The module will be imported once.
* The module will be imported multiple times.
* The `import` statement won't work.
