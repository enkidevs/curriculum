---
author: catalin

levels:

  - basic

  - advanced

  - medium

  - beginner

type: normal

category: feature

aspects:

  - deep

  - obscura

links:

  - '[docs.oracle.com](http://docs.oracle.com/javase/7/docs/technotes/guides/management/jconsole.html){website}'

notes: >-
  https://insights.enki.com/#/contrib/others/55f43176da97642e00a78199?search=khandelwalrinki

---

# Intro to `JConsole`

---
## Content

`JConsole` is a graphical monitoring tool to monitor *Java Virtual Machine* and *Java* applications both on a local or remote machine.

It is useful for high-level diagnosis on problems such as memory leaks, excessive class loading, and running threads.

It can also be useful for tuning and heap sizing as it lets dynamically change several parameters in the running system.

Starting `JConsole` if the JDK is in the system path:
```java
$ jconsole

```
When JConsole starts, you will be given a choice of all the Java applications that are running locally that `JConsole` can connect to.
Output includes, over time, heap memory usage, number of threads, number of classes, and CPU usage.

Starting `JConsole` on a specific application:
```java
$ jconsole PID
```

Setting up Remote Monitoring:
```java
$ jconsole hostname:port
```

If you do not specify a host name/port number combination, then `JConsole` will display a connection dialog box to enable you to enter a host name and port number.

---
## Practice

Set up remote monitoring with JConsole:
```
$ jconsole ???:???
```

* `hostname`
* `port`
* `PID`
* `-J-d64`
* `-J-d32`
* `-system`
* `gate`

---
## Revision

What does the following piece of code do?
```
$ jconsole PID
```
???

* Starts JConsole on a specific application
* Starts JConsole at a specific time
* Starts JConsole on a private port
