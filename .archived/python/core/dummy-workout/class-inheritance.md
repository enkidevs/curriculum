---
author: catalin

levels:

  - basic

  - medium

type: normal

category: must-know

notes: |+
  Code has errors and will not run. See mismatching class names in def and call:

  class ExtendedEnki(Enki): #note base class
      pi = 3.14
  Now our child class inherits everything from its parent:

  enki = EnkiExtended()


links:

  - >-
    [docs.python.org](https://docs.python.org/3.5/tutorial/classes.html#inheritance){website}

---
# Class inheritance

---
## Content

Class inheritance is easily achieved in Python following this syntax:
```python
class ExtendedClass(ParentClass):
    [statement]
    .
    .
    [statement]
```
Consider the `Animal` parent class:
```python
class Animal:
    name = 'Max'

```

with the `Bird` child class:
```python
#note base class
class Bird(Animal):
    wings = True
```

Now our child class **inherits** everything from its parent:
```python
enki = Bird()
# child specific attribute
print(enki.wings)
# True

# parent specific attribute
print(enki.name)
# Max
```

To check the inheritance:
```python
print(isinstance(enki, Animal))
# True
print(issubclass(Bird, Animal))
# True
```

---
## Practice

Make `Maths` inherit `Subject` :
```
???
  credits = 15
```
* class Maths(Subject):
* class Maths(Subject)
* class Maths:Subject
* class Maths extends Subject:

---
## Revision

Check if `cClass` is a child of `pClass`:

???

* issubclass(cClass,pClass)
* issubclass(pClass,cClass)
* ischild(cClass,pClass)
* ischild(pClass,cClass)
