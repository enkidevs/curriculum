# `weakref` proxies
author: catalin

levels:

  - advanced

  - medium

type: normal

category: tip

parent: implementing-weak-references

links:

  - '[pymotw.com](https://pymotw.com/2/weakref/#proxies){website}'

---
## Content

To implement weak references to objects in Python, one can use the `ref` or the `proxy` constructors.

The difference is that proxies can be used without calling the `ref` first to access the object, acting just like the referenced object.

```python
import weakref

class Enki(object):
    def __init__(self, arg):
        self.arg = arg

enki = Enki('arg')
r = weakref.ref(enki)
p = weakref.proxy(enki)

# object argument printing
print(enki.arg)
# weakref argument printing (ref)
print(r().arg)
# weakref argument printing (proxy)
print(p.arg)
```

If the proxy is accessed after the referenced object is deleted, `ReferenceError` is raised.

Keep in mind that proxies can't be used as Dictionary keys as they are not **hashable**.

---
## Practice

What’s the difference between the `ref` and `proxy` `weakref` constructors?

 ???
 
*Proxies can be used without calling the ref first to access the object.
*Ref can be used without calling the proxy first to access the object.

---
## Revision

Which error is raised if the proxy is accessed after the reference object is deleted? ???

*`ReferenceError` 
*`AccessError` 
*`ObjectError` 
*`ProxyError`