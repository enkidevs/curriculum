---
author: catalin

levels:

  - advanced

  - medium

type: normal

category: how to
aspects:
  - workout
  - deep
links:

  - '[pymotw.com](https://pymotw.com/2/weakref/){website}'
  - '[docs.python.org](https://docs.python.org/3.5/library/weakref.html){website}'

notes: >
  Note by Vasudev:

  Insight does not show the benefit of using weak references. Change it so it
  does.

standards:
  python.store-manipulate-data.5: 10
  python.store-manipulate-data.6: 10

---

# Implementing **weak** references

---
## Content

Normal Python references to objects increment the object's reference count thus preventing it from being **garbage collected**. **Weak Reference** points to the object but does not affect **garbage collector** i.e. it does not increment the object's reference count.

If a user desires creating **weak references**, the `weakref` module can be used:
```python
import weakref
```
Consider the sample object:
```python
class Enki(object): pass
```

To create a weak reference, the `ref` class is used:
```python
# object instance
enki = Enki()
# weak reference to our object
r = weakref.ref(enki)

```
Then, you can call the reference object:
```python
print(r)
# <weakref at 0x01414E40; to 'Enki'...>
print(r())
# <__main__.Enki object at 0x0133D270>
```
If the reference no longer exists, calling it returns `None`:
```python
del enki
print(r())
# None
```

To check the existence of the reference:
```python
if r is not None:
  # reference exists!
```

Weak references are often used to implement caching for large objects, but also for implementing cyclic references.

Imagine the case where object X references object Y and Y references X. Without a cycle-detecting garbage collector, the two objects would never be garbage collected. However, if one of the references is **weak**, they will be properly garbage collected.

---
## Practice

Check to see if a reference, `e`, exists:

```
if e ??? not ???
```

* `is`
* `None`
* `equals`
* `parallel`
* `null`
* `0`

---
## Revision

Create a weak reference (reference that does not affect garbage collector) to the object:

```
class Python(object): pass
enki = Python()

r = ???.ref(???)
```


* `weakref`
* `enki`
* `create`
* `instance`
* `instanceof`
* `Python`
* `class`
* `pass`

---
## Quiz
### how would you check a variable for NoneType?

```python
x = None:
if ...
  print('x is None')
```

 ???

* if x is None
* if x == None
* if not x
* if x is not None
