# Synchronization Methods
author: nickdaminov

levels:

  - medium

type: normal

category: pattern

links:

  - '[More on Critical Section](https://en.wikipedia.org/wiki/Critical_section)'

---
## Content

**Synchronization** is an important concept when tackling multithreading problems. *Race conditions* can be avoided by using different types of patterns. The four most common are: *Lock*, *Semaphore*, *Monitor* and *Mutex*.

The usual flow of working with the

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

**NOTE:** It is important to remember to use the same *lock* when working with sensitive data in multiple threads, as acquiring different *locks* will lose the purpose of synchronization. 

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

---
## Footnotes

[1:Critical Section]
Section of a code which can only be accessed by a certain number of threads/processes (usually no more than one).   
