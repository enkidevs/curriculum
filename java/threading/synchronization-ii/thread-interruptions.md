---
author: catalin
type: normal
category: must-know
links:
  - >-
    [www.javatpoint.com](http://www.javatpoint.com/interrupting-a-thread){website}
notes: |-
  https://insights.enki.com/insight/55b05687c629433100344a8a
  https://insights.enki.com/insight/55b0539dd457944f00962cd7
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Thread interruptions


---

## Content

*Interrupts* can be used to indicate that a thread should stop whatever its doing and do something else or terminate.

If any thread is in sleeping or waiting state , it will handle `interrupt()` immediately and break out of the sleeping or waiting state, throwing `InterruptedException`. If the thread is not in the sleeping or waiting state, calling the `interrupt()` method doesn't interrupt the thread but sets the *interrupt flag* to `true`, which the thread may handle after it's done with its current process.

Interrupt a `Thread`:

```java
myThread.interrupt();
```

Test whether the current `Thread` has been interrupted and throw an exception:

```java
//interrupted() is a static method
if (Thread.interrupted()) {
    throw new InterruptedException();
}
```

Tests whether a `Thread` object has been interrupted:

```java
myThread.isInterrupted();
```

Handle `interrupt()` signals:

```java
try {  
  Thread.sleep(1000);
} catch (InterruptedException e) {}
```


---

## Practice

Complete the following code snippet to handle `interrupt`  signals:

```java
try { Thread.sleep(1000); }
catch(??? e) {}
```

- `InterruptedException`
- `InterruptException`
- `ThreadException`
- `ThreadInterruptException`


---

## Revision

Complete the following code snippet to throw the correct exception when a thread has been interrupted:

```java
if (Thread.???()) {
  throw new ???();
}
```

- `interrupted`
- `InterruptedException`
- `stopped`
- `Exception`
- `ThreadException`
- `prevented`
- `PreventedException`
