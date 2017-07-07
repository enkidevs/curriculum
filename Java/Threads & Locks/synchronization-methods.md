# Synchronization Methods
author: nickdaminov

levels:

  - medium

type: normal

category: pattern

links:

  - '[More on Critical Section](https://en.wikipedia.org/wiki/Critical_section)'
  - '[Locks Objects in Java](https://docs.oracle.com/javase/tutorial/essential/concurrency/newlocks.html)'

---
## Content

**Synchronization** is an important concept when tackling multithreading problems. *Race conditions* can be avoided by using different types of patterns. The four most common are: *Lock*, *Semaphore*, *Monitor* and *Mutex*.

**Locks** are the most simple structure to implement. Their key idea is that only one thread can enter the *critical section*[1].    

```
public class Lock{

  private boolean locked = false;

  public synchronized void lock()
  throws InterruptedException{
    while(locked){
      wait();
    }
    isLocked = true;
  }

  public synchronized void unlock(){
    isLocked = false;
    //notifies waiting threads that
    //the lock was released
    notify();
  }
}
```
**Mutex** has the same concept as a lock but can be accessed between the processes (i.e. a wider range lock).

Java also provides predefined *lock* interfaces in their `java.util.concurrent` library.

**NOTE:** It is important to remember to use the same *lock* when working with sensitive data in multiple threads, as acquiring different *locks* will lose the purpose of synchronization.

---
## Revision

What is a lock?

???

What is the difference between a lock and a mutex?

???

* synchronization mechanism that allows a single thread to enter a critical section
* mutex can be accesses by processes while lock can only be accessed by threads
* synchronization mechanism that allows multiple thread to enter a critical section
* mutex can be accesses by threads while lock can only be accessed by processes
* mutex allows multiple processes to enter critical section
* lock pauses execution of a program for a certain time in order for the system to free up the resources


---
## Footnotes

[1:Critical Section]
Section of a code which can only be accessed by a certain number of threads/processes (usually no more than one).   
