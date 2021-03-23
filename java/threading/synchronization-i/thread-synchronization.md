---
author: nickdaminov
type: normal
category: how-to
links:
  - >-
    [More on
    Synchronization](http://www.wideskills.com/java-tutorial/java-threads-tutorial/p/0/1){website}
  - >-
    [More on Race
    Condition](https://en.wikipedia.org/wiki/Race_condition){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Thread Synchronization


---

## Content

**Synchronization** is a process of controlling the workflow of the threads regarding the order in which they access shared resources. This is a vital part of *threading* topic as threads often make use of the same resources which may lead to unforeseen results and data corruption due to parallel running. The situation in which the same resources are accessed and/or modified at the same time is called *race condition* and should be avoided to ensure correctness of the program.

*Java* provides us with inbuilt synchronization functionality. It is possible to either synchronize a concrete method or a block of code.

- In order to synchronize on a method `synchronized` is written before the return type of a method. In the example below, `printSeq` is a synchronized method which means that if two or more thread instances call it they will have to wait until the previous thread finishes executing it.

```java
class synchExample {
  public synchronized void printSeq(int n){
    for(int i = 0; i < 5; i++) {
      System.out.println(n+i);
      try {
        Thread.sleep(400);
      }
      catch(Exception e) {
        System.out.println(e);
      }
    }
  }
}
```

**NOTE:** synchronizing on a method is equivalent to synchronizing on a `this` object instance, so only one method is accessible at a time.

- Synchronization on an object has the following pattern:

```java
synchronized (<object reference>) {
  //do something
}
```

Where `object reference` is whatever object your class has access to.

More general approaches will be discussed in further insights.


---

## Practice

Where should `synchronized` be in order for a method to work?

???

- before return type
- before access type
- before the name of the method


---

## Revision

What key word provides inbuilt Java synchronization?

???

- `synchronized`
- `parallel`
- `sequenced`
- `ordered`
