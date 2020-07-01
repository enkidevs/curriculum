---
author: catalin
type: normal
category: tip
links:
  - >-
    [docs.python.org](https://docs.python.org/3.5/tutorial/classes.html#class-and-instance-variables){website}
parent: method-objects
notes: >
  Insight needs to be rewritten. There is overuse of the string Enki (caps and
  small) for different things like class name and class level var. Also, the
  values passed to the constructor are numbers like 0.2.3 etc. which are
  meaningless and will be confusing to at least beginners. Simple values like
  'a' and 'b', or 1 and 2 could be used instead. --> updated.
---

# **Class** vs. **Instance** variables


---

## Content

The difference between **class** and **instance** variables:

**Class variables** are used for *attributes* and *methods* shared by all instances of a class. **Instance variables** are used for data unique to each *instance*.

Suppose we have the class definition:

```python
class Enki:
    class_var = 'python'  # class var

    def __init__(self, inst):
        self.inst = inst  # instance var
```

The difference between the types of variables can be easily seen:

```python
old = Enki('0.2.3')
new = Enki('0.2.41')
print(old.class_var) # 'python'
                     # (shared/class)
print(new.class_var) # 'python'
                     # (shared/class)
print(old.inst) # '0.2.3' (unique/instance)
print(new.inst) # '0.2.41' (unique/instance)
```


---

## Revision

Is `my_var`  a class or instance variable?

???

```plain-text
class Test:
   my_var = ‘enki’
```

- `class`
- `instance`
