---
author: nickdaminov
type: normal
category: pattern
links:
  - >-
    [More on
    Monitors](https://stackoverflow.com/questions/7335950/semaphore-vs-monitors-whats-the-difference){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Monitors


---

## Content

Unlike the two previous patters **monitors** are higher class synchronization mechanisms. **Monitor** functionality can be accessed by multiple threads.

We can think of a **monitor** as being is a class instance which methods are mutually exclusive so that only one thread can execute a particular method of this object at a time. **Monitors** make use of lower class synchronization patterns such as *locks* and *semaphores* in order to achieve this functionality.

Example of such class implementation:

```java
class MonitorExample {
  private int counter = 0;

  //here we use 'synchronized' instead
  //of custom locks to illustrate
  //mutual exclusion of methods

  public synchronized int addOne() {
    counter += 1;
  }

  public synchronized void deleteOne() {
    counter -= 1;
  }

  public synchronized void print() {
    System.out.println(counter);
  }
}
```


---

## Practice

What is the highest class synchronization pattern?

???

- Monitor
- Lock
- Mutex
- Semaphore


---

## Revision

What is a monitor?

???

What is the key concept of a monitor?

???

- A high class structure that provides synchronized functionality accessible by many threads
- To provide synchronized functionality by mutually exclusive methods
- To provide more fancy output unlike punchcards and LEDs
- A pattern that allows multiple threads to use certain functionality at a single time
- A piece of hardware used to display information from a computer to the user
