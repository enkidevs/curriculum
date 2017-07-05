# Thread Sleep
author: nickdaminov

levels:

  - medium

type: normal

category: feature

links:

- '[More on Sleep](https://docs.oracle.com/javase/tutorial/essential/concurrency/sleep.html§)'
- '[More on Joining](https://docs.oracle.com/javase/tutorial/essential/concurrency/join.html)'
- '[More on InterruptedException](https://docs.oracle.com/javase/7/docs/api/java/lang/InterruptedException.html)'

---
## Content

Sometimes you might want to put a thread to `sleep` (i.e. stop it's execution for some time) or `join` it (i.e. wait until it terminates). This is a very basic concept but can have many uses.

`sleep()` is implemented as a `static` method in the `Thread` class described earlier so it can be called directly on it or on any other custom thread from inside your program  

The example of using `.sleep()` would be:

```
public class SleepingThread {
  public static void main(String args[])
    throws InterruptedException {
    for (int i = 0; i < 5; i++) {
      //Pause for 4 seconds
      Thread.sleep(4000);
      //Print a number
      System.out.println(i);
    }
  }
}

```
---
## Practice

What does `.sleep` method do?

???

* It waits until a thread finished executing
* It pauses execution of a thread for a certain time
* It pauses all the threads in a queue
* It frees all the resources that the current thread is holding

---
## Revision

What method stops execution for a specified time and continues running afterwards?

???

* .join()
* .sleep()
* .wait()
* .combine()
