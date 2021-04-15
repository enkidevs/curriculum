---
author: catalin
type: normal
category: caveats
links:
  - '[pawlan.com](http://pawlan.com/monica/articles/refobjs/){website}'
notes: 'https://insights.enki.com/#/contrib/others/55f4be87d7d6642d0011873b?search=kha'
---

# Only objects that are not referenced are to be garbage collected.


---

## Content

In order for a *Java* object to be automatically garbage collected, all the references to it must be *nullified*.

For garbage collection to work on a specific object, any other objects that act as references to the first one must also be *nullified*.

For example:

```java
Document doc = readXmlDocument();

```

Here a `Document` object was created by reading an `XML` from memory.

```java
Node child = 
   doc.getDocumentElement().getFirstChild();
```

A `Node` object was created by getting the first child element from the `DOM document`.

```java
doc.removeNode(child);
doc = null;
```

At the end of the code snippet one might think the `DOM document` will be garbage-collected. This is not the case!

A `DOM Node` object always belongs to a `DOM Document`. Even when removed from the document the node object retains a reference to its owning document. As long as we keep that child object, neither the document nor any of the nodes it refers to will be removed.
