---
author: adamMontgomerie
type: normal
category: tip
tags:
  - multithreading
  - threads
  - synchronization
  - final
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/concurrency/syncmeth.html){website}
---

# `final` fields do not need to be read through `synchronized` methods


---

## Content

Using `synchronized` methods to access an object's fields is a way to prevent thread interference and memory consistency errors.

For example:

```java
private int x = 0;
public synchronized void getX() {
  return x;
}
```

However, fields that are declared as `final` can be safely accessed using methods that are not `synchronized`:

```java
private final int x = 0;
public void getX() {
  return x;
}
```

This is is because a `final` field cannot be changed once it has been set; so there is no chance of introducing a memory consistency error.
