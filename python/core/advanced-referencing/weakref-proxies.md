---
author: catalin

levels:

  - advanced

  - medium

type: normal

category: tip
aspects:
  - workout
  - deep

standards:
  python.store-manipulate-data.5: 10
  python.store-manipulate-data.6: 10

links:

  - '[pymotw.com](https://pymotw.com/2/weakref/#proxies){website}'

parent: implementing-weak-references

---

# `weakref` proxies

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
# print(r.arg) will not work as r
# does not reference the object and
# must be dereferenced as r()
# weakref argument printing (ref)
print(r().arg)
# weakref argument printing (proxy)
print(p.arg)
```

If the proxy is accessed after the referenced object is deleted, `ReferenceError` is raised.

Keep in mind that proxies can't be used as Dictionary keys as they are not **hashable**.

---
## Practice

Which error is raised if the proxy is accessed after the reference object is deleted? ???


* `ReferenceError`
* `AccessError`
* `ObjectError`
* `ProxyError`

---
## Revision

What’s the difference between using `ref` and `proxy` from `weakref`?

???


* Ref must be dereferenced in order to access the object while Proxies don't have to be.
* Ref can be used without calling the proxy first to access the object.
