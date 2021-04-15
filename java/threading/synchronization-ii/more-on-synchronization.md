---
author: nickdaminov
type: normal
category: must-know
links:
  - >-
    [More on Atomic
    Variables](https://docs.oracle.com/javase/tutorial/essential/concurrency/atomicvars.html){website}
  - >-
    [More on Atomic
    Package](https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/atomic/package-summary.html){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# More on Synchronization


---

## Content

Another way of ensuring mutual exclusion without using synchronization patters or `synchronized` is using atomic variables provided in `java.util.concurrent.atomic` library. It has to be noted that this approach is specific to Java and will only work if you are working with single variables.

Example:

```java
class Counter {
  //create a new integer
  //variable with value of 0
  private AtomicInteger x =
          new AtomicInteger(0);

  public void add(value) {
      x.incrementAndGet(value);
  }

  public void decrement(value) {
      x.decrementAndGet(value);
  }

  public int getValue() {
      return x.get();
  }
}
```

There are also `booleans`, arrays, references and many other variables worth knowing about.


---

## Revision

What is a thread safe way of accessing and updating variables without using locks or `synchronized`?

???

- atomic variables
- electronic variables
- instant variables
