---
author: adamMontgomerie
type: normal
category: feature
tags:
  - multithreading
  - server-side
links:
  - >-
    [javarevisited.blogspot.co.uk](http://javarevisited.blogspot.co.uk/2015/05/top-10-java-multithreading-and.html){website}
  - >-
    [javarevisited.blogspot.sg](http://javarevisited.blogspot.sg/2013/07/how-to-create-thread-pools-in-java-executors-framework-example-tutorial.html){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Use thread pool executors


---

## Content

Creating threads is expensive. Rather than creating and discarding a new thread every time we need to process a request, we can use the Java Executor Framework.

The Executor Framework can be used to create a pool of threads, usually when the application starts. These threads can then be re-used to handle requests, preventing us from having to manually create threads on a per-request basis.

```java
public class ThreadPoolExample {
  public static void main(String args[]) {
    ExecutorService service =
       Executors.newFixedThreadPool(10);
    for (int i =0; i<100; i++){
      service.submit(new Task(i));
    }
  }
}
final class Task implements Runnable{
  private int taskId;
  public Task(int id){
    this.taskId = id;
  }
  @Override
  public void run() {
    // do stuff
  }
}
```

This can improve server response time; as we do not have to wait for a thread to be created before we can process a request.


---

## Revision

To avoid creating threads which can be expensive, what framework can be used to process create and discard requests?

???

- Java Executor Framework
- Java Thread Manager Framework
- Java Process Framework
