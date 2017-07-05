# Using `Thread.join`
author: adamMontgomerie

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

tags:

  - multithreading

  - threads

links:

  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/concurrency/join.html){website}

---
## Content

`Thread.join` can be used to make a thread wait for another one to complete before continuing execution:
```
class JoinThread extends Thread {
  private Thread waitsFor;
  JoinThread(Thread t) {
    waitsFor = t;
  }
  public void run() {
    if (waitsFor != null) {
      waitsFor.join();
      //waits here until waitsFor completes
    }
    ...
  }
}
```
In the example above, a `JoinThread` instance will only continue to execute when the `Thread` referenced in `waitsFor` has completed.
```
Thread t1 = new Thread();
Thread t2 = new JoinThread(t1);
t1.start();
t2.start();
```
In this example, `t2` will wait for `t1` to complete.

---
## Practice

What command is used to make a thread wait for another thread to complete before continuing its execution?
???

*Thread.join()
*Thread.wait()
*Thread.combine()

---
## Revision

Consider the following snippet:
```
Thread t1 = new Thread();
Thread t2 = new Thread();
t1.start();
t1.join();
t2.start();
```
The `t1.join()` method call will ???

*make t2 wait for t1 to die.
*immediately start t2.
*pause t1 until t2 dies.
*speed up t1.
