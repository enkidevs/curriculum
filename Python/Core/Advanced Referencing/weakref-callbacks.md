# `weakref` callbacks
author: catalin

levels:

  - advanced

  - medium

type: normal

category: how to

parent: implementing-weak-references

links:

  - '[pymotw.com](https://pymotw.com/2/weakref/#references){website}'

---
## Content

The `ref` constructor for weak references can take another argument, a callback function that is invoked every time the object referenced gets deleted:
```python
import weakref

class Enki(object): pass #empty object

def callback(reference):
    print("callback", reference)

enki = Enki() #definition of callback
r = weakref.ref(enki, callback)

del enki # callback is invoked
```

The output is:
```python
callback <weakref at 0x01554E40; dead>
```

These callbacks can be useful for example to remove dead references from a cache.

---
## Practice

What is the extra argument a `ref` constructor for weak references can take? 

???

*`callback` 
*`flag` 
*`boolean` 
*`return`

---
## Revision

Complete the following code snippet (supposing a callback function is defined):

```
 r = weakref.???(enki, ???)
```

*`ref` 
*`callback` 
*`call` 
*`run` 
*`flag` 
*`bool`