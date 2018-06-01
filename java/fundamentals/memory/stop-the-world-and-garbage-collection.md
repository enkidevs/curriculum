---
author: catalin

levels:

  - advanced

  - medium

type: normal

category: feature


links:

  - '[stackoverflow.com](http://stackoverflow.com/questions/16695874/why-does-the-jvm-full-gc-need-to-stop-the-world){website}'
  - '[blog.ragozin.info](http://blog.ragozin.info/2011/12/garbage-collection-in-hotspot-jvm.html){website}'

notes: >-
  https://insights.enki.com/#/contrib/others/55f4c1d0d7d6642d0011873c?search=khandelwalrinki

  https://insights.enki.com/#/contrib/others/55f4c419ce84ec2100d2bb6a?search=kha

---

# Stop-the-world and Garbage Collection

---

## Content

`Java` features automatic memory management also known as _garbage collection_ (GC). Once an instance of an object becomes unreachable from the executing program, it's classified as garbage and the memory it takes up should eventually be freed.

_Stop-the-world_ (STW) means that the _JVM_ is stopping the application from running to execute a _GC_.

When _GC_ occurs every thread, except the ones used by it, will stop and will only resume after the _GC_ task finishes.

You can enable _GC_ logging before running an application:

```java
$ java -XX:+PrintGCDetails MyApplication
```

A common _GC_ algorithm is **Mark Sweep Compact** (MSC) that HotSpot tend to use by default, being implemented with a _STW_ approach.

**Concurrent Mark Sweep** (CMS) is an other _GC_ algorithm. It does not use _STW_ pauses.

You can enable _CMS_ :

```java
$ java -XX:+UseConcMarkSweepGC MyApplication
```

It's designed to minimize _GC_ pauses and thus keep the application responsive.

---

## Practice

Enable **GC** logging when running the java application:

```
$ java -XX:+???
              Enki
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
