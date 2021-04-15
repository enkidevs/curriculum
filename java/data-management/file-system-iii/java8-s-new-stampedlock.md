---
author: catalin
type: normal
category: feature
links:
  - >-
    [blog.takipi.com](http://blog.takipi.com/java-8-stampedlocks-vs-readwritelocks-and-synchronized/){website}
notes: 'https://insights.enki.com/#/contrib/others/55f038e0f457f33b0062114c?search=kha'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Java8's new `StampedLock`


---

## Content

`ReadWriteLock` interface was introduced because `synchronized` blocks would not grant the ability to have more than one thread in a critical situation, for example where multiple threads are trying to edit some data, and others to simply read it.

```java
ReadWriteLock lock = new
   ReentrantReadWriteLock();
```

These locks specify which threads block everyone else (writers) and which ones work with others for consuming content (readers), but they are known for their slowness.

**Java8** introduced a new type of locks, `StampedLock`. In contrast to `ReadWriteLock` the locking methods of a `StampedLock` return a stamp represented by a `long` value.

```java
StampedLock lock = new StampedLock();

```

Obtaining a read or write lock via `readLock()` or `writeLock()` returns a stamp which is later used for unlocking within the finally block or to check if the lock is still valid.


---

## Practice

The locking methods of a `StampedLock` return a stamp represented by a ??? value.

- `long`
- `int`
- `float`
- `char`
- `String`


---

## Revision

To stop any reading locks from being obtained, you can use the method:

```java
StampedLock lock =
  new StampedLock();

lock.???;
```

- `writeLock()`
- `readLock()`
- `lockReading()`
- `lockWriting()`
