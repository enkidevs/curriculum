---
author: catalin
type: normal
category: feature
links:
  - >-
    [www.tutorialspoint.com](http://www.tutorialspoint.com/unix_commands/jinfo.htm){website}
notes: >-
  https://insights.enki.com/#/contrib/others/55f423bfd7d6642d00118729?search=khandelwalrinki
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

# The `jinfo` tool


---

## Content

`jinfo` prints configuration information for a given Java process or core file or a remote debug server. Configuration information includes Java System properties and Java virtual machine command line flags.

Previously available on other platforms, it was only included on Windows with the `JDK 8` release.

Basic syntax:

```java
jinfo PID
```

With the `-flag` option, `jinfo` can also dynamically set, unset, or change the value of certain Java VM flags for the specified Java process:

```java
jinfo -flag ThreadStackSize PID

//output : -XX:ThreadStackSize=0
```

Print JavaSystem properties as name, value pairs:

```java
jinfo -sysprops PID
```

 If the given process is running on a 64-bit VM, you may need to specify the -J-d64 option:

```java
jinfo -J-d64 -sysprops PID
```

The utility can also use the `jsadebugd` daemon to query a process or core file on a remote machine. Note that the output takes longer to print in this case.


---

## Practice

Print the JavaSystem properties as name value pairs with the given process running on a 64 bit VM:

```java
jinfo ??? ???
  PID
```

- `-J-d64`
- `-sysprops`
- `-d64`
- `-VM-d64`
- `-systprops`
- `-system`


---

## Revision

Print the JavaSystem properties as name value pairs:

```java
jinfo ??? PID
```

- `-sysprops`
- `-systprops`
- `sysprops`
- `props`
