---
author: catalin
type: normal
category: best-practice
links:
  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/10599710/weakhashmap-example){website}
notes: 'https://insights.enki.com/#/contrib/others/5585b52f575399cf01b26b9f?search=kha'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# How and when to use `WeakHashMap` class


---

## Content

A `WeakHashMap` is a special `Map` implementation where the keys of the map are stored in a `WeakReference`.

The `WeakHashMap` functions identically to the `HashMap` with one important exception: if the Java memory manager no longer has a strong reference to the object specified as a key, then the entry in the map will be removed.

Creating a `WeakHashMap`:

```java
HashMap map = new WeakHashMap();
```

You can use `WeakHashMap` to save resource by keeping a reference to something but allow it to be collected by the garbage collector when nothing else references it.

You can test this with a forced garbage collection : 

```java
System.gc();
```

It is widely regarded that caching problems can easily be solved with `WeakHashMaps`, since when the references become obsolete they get discarded.

Another usage for this class is the creation of canonical maps, as you can store additional properties to certain objects as `WeakHashMaps` entries that will be immediately discarded when they become obsolete.


---

## Practice

When is a `WeakHashMap`  entry taken by the garbage collector? 

???

- When the key’s strong reference is set to be null.
- When it’s empty.
- After it has been used once.


---

## Revision

Complete the following Java code snippet to create a new weak hash map instance and to force a garbage collection:

```java
HashMap map =
      new ???();
System.???();
```

- `WeakHashMap` 
- `gc` 
- `HashMap` 
- `garbage` 
- `mapInstance` 
- `collect` 
- `garbagecollect`
