---
author: adamMontgomerie
type: normal
category: tip
tags:
  - multithreading
  - threads
  - synchronization
  - locks
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/concurrency/locksync.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Using `synchronized` statements


---

## Content

`synchronized` statements can be used to avoid memory inconsistency errors and thread interference in multi-threaded programs.

When a thread executes code within a `synchronized` statement, the object passed as a parameter is locked.

When writing a `synchronized` block, the object providing the lock must be specified after the `synchronized` keyword:

```java
public class Example {
  private int sum;
  public void addToSum(int value) {
    synchronized(this) {
      sum += value;
    }
  }
}
```

In this example the object providing the lock is `this`, which is the instance of `Example` that the method is being called in.

You can lock instances of other classes as well:

```java
public class Example {
  private MyObject mo;

  public void myMethod() {
    synchronized(mo) {
      //code here
    }
  }
}
```


---

## Practice

When should you use the `synchronized` keyword?

???

- More than one thread try to modify the same instance of an object.
- A single thread tries to modify the instance of an object.
- More than one thread try to modify different instances of an object.
- Never.
- Every time you use multiple threads.


---

## Revision

When should you use the `synchronized` keyword?

???

- More than one thread try to modify the same instance of an object.
- A single thread tries to modify the instance of an object.
- More than one thread try to modify different instances of an object.
- Never.
- Every time you use multiple threads.
