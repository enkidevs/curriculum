---
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know
aspects:
  - introduction
  - workout
standards:
  python.modules.0: 10
  python.modules.1: 10

links:

  - '[from...import in depth](https://www.tutorialspoint.com/python3/python_modules.htm){website}'


---

# The from...import statement

---
## Content

To refer to specific items of a **module** within your program's **namespace**[1], you can use the `from...import` statement.

Using this statement, you basically specify exactly which **definitions** you want to directly reference.

Consider the following module:
```python
# my_functions.py

def hello(what):
    text = "Hello, " + what
    print(text)
def cube(x):
    print(x ** 3)
def quad(x):
    print(x ** 4)
```

To access exposed methods of it we could do the following:

```python
import my_functions

print(my_functions.cube(3)) # 27
my_functions.hello('Seba') # Hello, Seba
```

Instead, we can achieve the same using the `from ... import` statement:

```python
from my_functions import cube, hello

cube(3) # 27
hello('Seba') # Hello, Seba
```

The main advantage of the `from...import` statement is that it exempts you from using the *dot notation* and thus helps you not repeat yourself.

Note there is one more possible construction available, known as **wildcard imports** - `from..import *`:
```python
from module_name import *
```

This simply means, from `module_name` import every item. Keep in mind that wildcard imports should be avoided as they make it unclear which references are present in the current **namespace**, confusing both *readers* and *automated tools*.

You can also rename the item imported to whatever you want using the `as` keyword:
```python
from my_functions import quad as q
q(3) # 27
```

To end with, using `from ... import` statement doesn't save memory. It executes and caches the entire module just like regular `import` statement. So there is no consecrated pattern of distinguishing between these two, it depends on the developer's preferences.

---
## Practice

Consider the two files below - *main* and the *subtractor* module . Complete the missing gaps such that the code will execute with no problem when running `main.py`.

```python
# subtractor.py
def ???
  result = a - b
  print(f'{a} - {b} is: {result}')
  return result
```

```python
# main.py
??? ??? ??? subtract
            ??? ???

sub(20, 3)
# 20 - 3 is: 17

```


* `subtract(a, b):`
* `from`
* `subtractor`
* `import`
* `as`
* `sub`
* `subtract`
* `subtract(a, b)`
* `subtract()`
* `subtract():`
* `*`
* `subtractor.py`

---
## Revision

How can you specifically import the `calculate_volume` method of `cylinder` module?
```python
??? ??? ???
    ???

radius = 10
height = 30
calculate_volume(radius, height)
```


* `from`
* `cylinder`
* `import`
* `calculate_volume`
* `calculate_volume()`
* `*`
* `namespace`
* `__name__`
* `cylinder:`
* `def`
