---
author: Sergey

levels:

  - basic

  - medium

type: normal

category: best practice

tags:

  - java-io



notes: ''

---

# System independent path specification

---
## Content

Try not to be system-dependent with file paths, e.g.:

```
String dataFilepathName =
    "data" + "/" + "data.txt";

```
or:
```
String dataFilepathName =
    "data" + "\\" + "data.txt";
```
Instead be system-_independent_:
```
String dataFilepathName =
    "data" + File.separator + "data.txt";
```

---
## Revision

Which of these methods returns the system’s default path to a specific file separator?

???

* `File.separator` 
* `File.pathSeparator` 
* `File.defaultSeparator` 
* `System.separator`

 
