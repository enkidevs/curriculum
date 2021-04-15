---
author: catalin
type: normal
category: feature
links:
  - >-
    [docs.oracle.com](http://docs.oracle.com/javase/7/docs/technotes/tools/share/jmap.html){website}
  - >-
    [blog.codecentric.de](https://blog.codecentric.de/en/2008/07/memory-analysis-part-1-obtaining-a-java-heapdump/){website}
notes: >-
  https://insights.enki.com/#/contrib/others/55f42618da97642e00a78196?search=khandelwalrinki
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

# The `jmap` tool


---

## Content

`jmap` - Memory Map: Prints shared object memory maps or heap memory details of a given JVM process or a Java core file on the local machine. It can also used with the `jsadebugd` daemon to query a process or core file on a remote machine.

To print the heap configuration of a running Process:

```java
jmap -heap PID
```

To print the heap histogram for a running Process:

```java
jmap -histo PID
```

To list all loaded shared objects:

```java
jmap PID
```

You can also `dump` the heap information into a `.bin` file:

```java
jmap -dump:file=myFile.bin PID
```

If the `jmap PID` command does not respond because of a hung process, the `-F` option can be used (on Solaris OS and Linux only) to force the use of the Serviceability Agent.


---

## Practice

Dump the heap information into the `practice.bin` file:

```bash
jmap ???:???=
  practice.bin PID
```

- `-dump`
- `file`
- `dump`
- `location`
- `loc`
- `dest`
- `info`


---

## Revision

Print the heap histogram for a running process:

```bash
jmap ??? ???
```

- `-histo`
- `PID`
- `-h`
- `-histogram`
- `process`
- `processID`
