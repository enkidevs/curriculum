# Thread Synchronization
author: nickdaminov

levels:

  - medium

type: normal

category: how to

links:

  - '[More on Synchronization](http://www.wideskills.com/java-tutorial/java-threads-tutorial/p/0/1)'
  - '[More on Race Condition](https://en.wikipedia.org/wiki/Race_condition)'

---
## Content

**Synchronization** is a process of controlling the workflow of the threads regarding the order in which they access shared resources. This is a vital part of *threading* topic as threads often make use of the same resources which may lead to unforeseen results and data corruption due to parallel running. The situation in which the same resources are accessed and/or modified at the same time but should be done so in a specific order is called *race condition* and should be avoided to ensure correctness of the program.

*Java* provides us with inbuilt synchronization functionality. It is possible to either synchronize a concrete method or a block of code.
- In order to synchronize on a method `synchronized` is written before the return type of a method.
- The code block synchronization usually has the following pattern:

```
synchronized (<object reference
                   expression>) {
  <code block>
}
```

---
## Practice

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2

---
## Revision

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2
