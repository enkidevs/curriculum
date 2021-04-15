---
author: nickdaminov
type: normal
category: how-to
links:
  - >-
    [More on the Thread
    Class](https://docs.oracle.com/javase/8/docs/api/java/lang/Thread.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Extending Thread Class


---

## Content

The easier way of creating a thread is by extending the `Thread` class since we inherit a lot of functionality from it:

Simply:

```java
public class ThisIsThread
           extends Thread {
  @Override
  public void run() {
    for (int i = 0; i < 5; i++) {
      System.out.println("thread is
                      running" + i);
    }
    System.out.println("Finished!");
  }
}
```

Then in the `main` function:

```java
public class Main {
  public static void main(String[] args) {
    //instantiating a new thread
    ThisIsThread counter =
            new ThisIsThread();
    //starting two threads
    new ThisIsThread().start();
    counter.start();
  }
}
```

The result of running the above program would be the same as in the previous one.

**NOTE:** for better understanding of *threads* please read the *More on the Thread Class* section below.


---

## Practice

What function should be `Overridden` in a custom thread?

???

What function should be called in order to concurrently start a thread?

???

Should a thread object be passed to an instance of a `Thread` class?

???

- `run()`
- `start()`
- No
- Yes
- It does not matter
- `create()`


---

## Revision

When we create an object which extends `Thread` do we need to pass this object to an instance of a `Thread` class?

???

- No, as it is a thread itself
- Yes, as it is only a runnable object
