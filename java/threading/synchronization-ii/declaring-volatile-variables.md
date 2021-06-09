---
author: adamMontgomerie
type: normal
category: tip
tags:
  - multithreading
  - threads
  - volatile
  - synchronization
  - atomic_access
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/concurrency/atomic.html){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Declaring `volatile` variables


---

## Content

The `volatile` modifier guarantees that all threads will always see the most up-to-date value of the variable.

In the following example, the `closed` field is `volatile`. This means that if another thread calls a thread's `close` method, then the thread currently executing the `run` loop will see the change in value and terminate.

Without declaring `closed` as `volatile`, there is no guarantee that the thread would see the change in value as the compiler will only read the field `closed` once and will reuse the cached value for every execution of the loop. The loop will continue endlessly, even though we assume that the value of `closed` is changed by another running thread.

```java
volatile boolean closed;
public void close() {
  closed = true;
}
public void run() {
  while (!closed) {
    ...
  }
}
```

However, `volatile` is not necessarily a replacement for `synchronized` statements as memory inconsistency errors are still possible and `volatile` does not guarantee atomicity.


---

## Revision

Take the following code snippet, the loop will run and loop endlessly, despite the assumption that the value of `this.done` is changed by another thread. To avoid this scenario, what keyword is used?

```java
??? boolean done;
```

- `volatile`
- `static`
- `finished`
- `checker`
