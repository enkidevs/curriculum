---
author: catalin
type: normal
category: how-to
links:
  - >-
    [www.herongyang.com](http://www.herongyang.com/Java-Tools/jstack-JVM-Thread-Dump-Stack-Strace.html){website}
notes: >-
  https://insights.enki.com/#/contrib/others/55f42bc3da97642e00a78197?search=khandelwalrinki
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

# Intro to `jstack` tool


---

## Content

A stack trace of all threads can be useful in diagnosing a number of issues such as deadlocks or hangs.

`jstack` is a utility that returns a complete dump of the various threads running in an app, which you can then be used to pinpoint the problem from the command line.

`jstack` works the same as pressing Ctrl-Break within the console window in which a Java program is running, or calling `Thread.getAllStackTraces()` or `Thread.dumpStack()` on each of the Thread objects in the VM.

Basic syntax:

```java
jstack PID
```

Print a detailed dump:

```java
jstack -l PID
```

A `jstack` call also dumps information about non-Java threads running within the VM, which aren't always available as `Thread` objects.


---

## Practice

`jstack` works the same as pressing Ctrl-break in the console window where a Java program is running, or by calling which two methods on each of the Thread objects in the VM?

???

- `Thread.getAllStackTraces() and Thread.dumpStack()`
- `Thread.getStackTraces() and Thread.getDumpStack()`
- `Thread.stackTraces() and Thread.allDumpStack()`


---

## Revision

Print a detailed dump of threads in the app:

```bash
jstack ??? ???
```

- `-l`
- `PID`
- `-v`
- `-d`
- `dump`
- `VM`
