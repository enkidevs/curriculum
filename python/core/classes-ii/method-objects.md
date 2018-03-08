---
author: catalin

levels:

  - basic

  - medium

type: normal

category: tip


links:

  - '[docs.python.org](https://docs.python.org/3.5/tutorial/classes.html#method-objects){website}'

parent: instance-objectsnotes: Using the word Enki or enki in many places such as for class name, instance name, return value (as in this example), is confusing to readers. Use different and more relevant names to distinguish. --> updated.

Also, what is the purpose of showing that you can do:

ef = enki.f

and then call:

ef()

?

It should be connected to some purpose or benefit, otherwise may be better not to show it.

---
## Content
# Method objects

In Python, functions are seen as *objects* - and there is a clear distinction between a **method call** and a **method object**.

Considering the following class and its instantiation: 
```python
class Enki:
    def f(self):
        return "Python"

enki = Enki()

```
**Calling** a method is straightforward:
```python
enki.f() # this will return 'Python'
print(enki.f()) # prints 'Python'
```

However, you are allowed to store the method body in another variable, without having to call the method right away:
```python
ef = enki.f # note the lack of parenthesis
ef() # returns 'Python'
print(ef()) # prints 'Python'
```

Note that under the hood, `enki.f()` is **exactly equivalent** to `Enki.f(enki)`.

---
## Revision

Store in variable `x` a method object from the `Test` class:
```
class Test:
   def p(self):
       return “p method”
??? = Test()
x = test.???
```


* `test`
* `p`
* `p()`
* `Test`
* `new`
* `def`
* `get`

