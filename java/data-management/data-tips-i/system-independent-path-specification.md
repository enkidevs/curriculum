---
author: Sergey
type: normal
category: best-practice
tags:
  - java-io
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# System independent path specification


---

## Content

Try not to be system-dependent with file paths, e.g.:

```java
String dataFilepathName =
    "data" + "/" + "data.txt";

```

or:

```java
String dataFilepathName =
    "data" + "\\" + "data.txt";
```

Instead be system-*independent*:

```plain-text
String dataFilepathName =
    "data" + File.separator + "data.txt";
```


---

## Revision

Which of these methods returns the system’s default path to a specific file separator?

???

- `File.separator` 
- `File.pathSeparator` 
- `File.defaultSeparator` 
- `System.separator`
