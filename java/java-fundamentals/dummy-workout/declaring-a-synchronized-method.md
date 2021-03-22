---
author: adamMontgomerie

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

tags:
  - multithreading
  - threads
  - synchronization
  - interleaving

links:

  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/concurrency/syncmeth.html){website}

---
# Declaring a `synchronized` method

---
## Content

Declaring a method as `synchronized` prevents thread interleaving. 

This means that when one thread executes an object's `synchronized` method, all other threads must wait until it finishes execution before being able to invoke `synchronized` methods on that object.

A `synchronized` method can be declared using the `synchronized` keyword:
```
public synchronized int getX() {
  return x;
}
```
 
