---
author: catalin
type: normal
category: tip
links:
  - >-
    [confluence.atlassian.com](https://confluence.atlassian.com/display/CONFKB/How+to+fix+out+of+memory+errors+by+increasing+available+memory){website}
notes: >-
  https://insights.enki.com/#/contrib/others/55f05ce11baba32f002fd31c?search=khandelwalrinki
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Increase `PermGen` space as to avoid `OutOfMemory` errors


---

## Content

Java Virtual Machines are allocated a default of `64 MB` of memory. Bigger applications will of course require more memory.

Permanent generation (`permGen`) is an area within the heap where class and method objects are stored. 

An app requires an increased `permGen` space when : 

- an application loads a large number of classes
- an application interns a large number of strings

When encountering the `OutOfMemoryError: permGen space` error, the permanent generation memory can be increased:

```java
java -XX:PermSize=256M
//increases initial PermGem space to 256 MB
```

A maximum `permGen` size can also be defined:

```java
java -XX:MaxPermSize=512m
//increases maximum PermGem space to 512 MB
```

Altogether with the `permGen space` error, `String.intern` or `ClassLoader.defineClass` errors can appear at the top of the error stack.

Bear in mind that with the introduction of `Java 8`, permanent generation space has been removed.


---

## Revision

Before Java 8, you could’ve increased `permGen` memory space to 256M with:

```java
???
```

- `java -XX:PermSize=256M` 
- `java PermSize=256M` 
- `PermSize=256M` 
- `java :PermSize=256M`
