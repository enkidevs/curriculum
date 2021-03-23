---
author: catalin
type: normal
category: feature
links:
  - >-
    [www.oracle.com](http://www.oracle.com/technetwork/java/javase/tooldescr-136044.html#gblvj){website}
notes: 'https://insights.enki.com/#/contrib/others/55f41eef742fb322000e0d7b?search=kha'
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Intro to `HPROF`


---

## Content

`HPROF` is a tool shipped together with the *Java SDK*, a dynamically linked library that interfaces with the *JVM Tools Interface*.

The `HPROF` tool is capable of presenting CPU usage, heap allocation statistics, and monitor contention profiles. In addition, it can report complete heap dumps and states of all the monitors and threads in the Java virtual machine. In terms of diagnosing problems, `HPROF` is useful when analyzing performance, lock contention, memory leaks, and other issues.

Run with `HPROF` :

```java
java -agentlib:hprof MyClass
```

Obtain heap allocation profile:

```java
java -agentlib:hprof=heap=sites MyClass 
```

Collect *CPU* usage information (from the compiler) :

```java
javac -agentlib:hprof=cpu=samples 
MyClass.java
```

The tool writes profiling information either to a file or to a socket in *ASCII* or *binary* format. This then can be further processed by a profiler front-end tool.


---

## Practice

Collect CPU usage information from the compiler using HPROF:

```shell
java -agentlib:???
    =cpu=??? example.java
```

- `hprof`
- `samples`
- `agent`
- `alloc`
- `heap`
- `compiler`
- `source`


---

## Revision

Using HPROF, obtain the heap allocation profile:

```shell
java ???:hprof=???
         =sites example
```

- `-agentlib`
- `heap`
- `alloc`
- `allocation`
- `-a-l`
- `-hprof`
