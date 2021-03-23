---
author: catalin
type: normal
category: feature
links:
  - >-
    [java.sun.com](http://java.sun.com/j2se/1.5.0/docs/tooldocs/share/jps.html){website}
  - '[andunix.net](https://andunix.net/info/java/jps){website}'
notes: >-
  https://insights.enki.com/#/contrib/others/55f4294ed7d6642d0011872b?search=khandelwalrinki
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

# How to retrieve running java processes with `jps`


---

## Content

The Java Virtual Machine has a `jps` tool used in order to list all the running java processes of the current user from within the command line terminal.

Basic syntax / lists all java processes:

```java
jps

8815 Jps
```

Long listing:

```java
jps -l

8848 sun.tools.jps.Jps
```

Listing arguments:

```java
jps -m

8909 Jps -m

```

When running several Java Web Start applications on a system, they tend to look the same, in which case, you can use `jps -m` to know their source.

To display Java VM parameters: `jps -v`

```java
jps -v

8994 Jps -Dapplication.home=/usr/lib/jvm/
java-8-oracle -Xms8m


```

If remote system is running `jstatd`,  `jps` can also list processes on a remote system.


---

## Practice

Display all Java VM parameters:

```java
??? ???
```

- `jps`
- `-v`
- `javavm`
- `-p`
- `-vm`
- `-vmp`


---

## Revision

Long list all Java processes using `jps`:

```java
???
```

- `jps -l`
- `jps`
- `jps list`
- `jps -list`
- `jps -long`
