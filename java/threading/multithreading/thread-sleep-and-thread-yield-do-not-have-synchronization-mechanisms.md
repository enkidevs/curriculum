---
author: catalin
type: normal
category: caveats
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/specs/jls/se7/html/jls-17.html){website}
notes: >-
  https://insights.enki.com/#/contrib/others/55f02923f457f33b00621148?search=khandelwalrinki
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# `Thread.sleep` and `Thread.yield` do not have synchronization mechanisms


---

## Content

Before a `Thread.sleep` or `Thread.yield` call the Java compiler will not flush writes cached in registers out to shared memory or reload values cached in registers.

In the following code snippet, `this.done` is assumed to behave like a **non-volatile** `boolean` field.

```java
while (!this.done)
    Thread.sleep(1000);
```

Taking all into consideration, the compiler will only read the field `this.done` once and will reuse the cached value for every execution of the loop. 

The loop will continue endlessly, even though we assume that the value of `this.done` is changed by another running thread.

You can avoid this scenario by using the `volatile` keyword:

```java
volatile boolean done;
```

This will prevent the caching of the variable, allowing different threads seeing an updated value. However, keep in mind that `volatile` will not guarantee atomicity.


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
