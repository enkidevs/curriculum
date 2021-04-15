---
author: catalin
type: normal
category: feature
links:
  - >-
    [docs.oracle.com](http://docs.oracle.com/javase/7/docs/technotes/tools/share/jhat.html){website}
notes: >-
  https://insights.enki.com/#/contrib/others/55f421b8742fb322000e0d7c?search=khandelwalrinki
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

# The `jhat` tool


---

## Content

Memory leaks often happen due to objects kept alive because of some reference in the rootset, even though they're no longer needed.

 `jhat` is a tool that analyzes binary heap dump files by creating an `HTTP/HTML` server that can be surfed in a browser, giving an object-by-object view of the heap, frozen in time.  

Basic syntax:

```java
jhat example.hprof

```

`jhat` will analyze the heap dump and make the data available on a local webserver that it runs by default on port `7000` (*http://localhost:7000*). 

To allow `jhat` to use more memory:

```java
jhat -J-mx1024 example.hprof 
```

To change webserver port:

```java
jhat -port 8080 example.hprof 
```

More functions of this tool can be found via the `jhat -h` command.


---

## Practice

Change the webserver port:

```java
jhat ??? 8080 enki.hprof
```

- `-port`
- `port`
- `-p`
- `p`


---

## Revision

Allow jhat to use extra memory:

```bash
jhat ??? enki.hprof
```

- `-J-mx1024`
- `-mx1024`
- `-m1024`
