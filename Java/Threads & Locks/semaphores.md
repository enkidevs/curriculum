# Semaphores
author: nickdaminov

levels:

  - medium

type: normal

category: pattern

links:

---
## Content

Semaphores are very similar to locks, the only difference is that they allow multiple threads/processes to enter the *critical section*[1]

In the following example *semaphore* class keeps track of how many threads entered it and only allows new threads to enter if their
```
public class Semaphore {
  private int threadsEntered = 0;
  private int limit = 0;


  //bounded Semaphore, max number of
  //entered threads is set
  //in the constructor  
  public Semaphore(int limit){
    this.limit = limit;
  }

  public synchronized void take()
              throws InterruptedException{
    //puts thread in a waiting mode
    while(this.threadsEntered >= limit)
      wait();
    this.threadsEntered++;
    this.notify();
  }

  public synchronized void release()
              throws InterruptedException{
    while(this.threadsEntered == 0)
      wait(); //this can only be a bug
              //or a non atomic operation
    this.threadsEntered--;
    this.notify();
  }
}
```
---
## Practice

What is the key difference between a lock and a semaphore?

???

* Semaphore allows multiple threads/processes to enter the critical section
* Semaphore can be accessed across processes whereas lock is only accessible across threads
* Semaphore holds a flag value which signalizes when an execution of a thread is finished

---
## Revision

What is the key difference between a lock and a semaphore?

???

* Semaphore allows multiple threads/processes to enter the critical section
* Semaphore can be accessed across processes whereas lock is only accessible across threads
* Semaphore holds a flag value which signalizes when an execution of a thread is finished

---
## Footnotes

[1:Critical Section]
Section of a code which can only be accessed by a certain number of threads/processes (usually no more than one).   
