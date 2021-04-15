---
author: catalin
type: normal
category: feature
links:
  - >-
    [Why does the JVM full GC need to
    stop-the-world?](http://stackoverflow.com/questions/16695874/why-does-the-jvm-full-gc-need-to-stop-the-world){website}
  - >-
    [Garbage collection in HotSpot JVM
    ](http://blog.ragozin.info/2011/12/garbage-collection-in-hotspot-jvm.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Stop-the-world & Garbage Collection


---

## Content

**Java** features automatic memory management also known as *garbage collection* (GC).

Once an instance of an object becomes unreachable from the executing program, it's classified as garbage, and the memory it takes up should eventually be freed.

*Stop-the-world* (STW) means that the *JVM* is stopping the application from running to execute a *GC*.

When *GC* occurs, every thread (except the ones used by it) will stop. The threads will only resume after the *GC* task finishes.

You can enable *GC* logging before running an application:

```java
java -XX:+PrintGCDetails MyApplication
```

A common *GC* algorithm is **Mark Sweep Compact** (MSC) that HotSpot tends to use by default. It is implemented with an *STW* approach.

**Concurrent Mark Sweep** (CMS) is another *GC* algorithm. It does not use *STW* pauses.

You can enable *CMS*:

```java
java -XX:+UseConcMarkSweepGC MyApplication
```

It's designed to minimize *GC* pauses and thus keep the application responsive.


---

## Practice

Enable **GC** logging when running the java application:

```java
java -XX:+??? Enki
```

- `PrintGCDetails` 
- `GCLog` 
- `GCLogging` 
- `PrintGarbageCollection`


---

## Revision

What does **Stop-the-world** mean?

???

- `program is stopped so GC can execute` 
- `GC is stopped` 
- `program terminates` 
- `main thread is stopped`
