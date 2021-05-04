---
author: adamMontgomerie
type: normal
category: how-to
tags:
  - file-path
  - java-7
links:
  - >-
    [docs.oracle.com](http://docs.oracle.com/javase/tutorial/essential/io/pathOps.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Create system file paths using the `Path` class


---

## Content

System file paths can be represented in Java by using the `Path` class. For example, a path can be created using the `Paths.get()` method:

```java
Path p = Paths.get("/u/me/tmp/myfile.txt");
```

Here is an alternate form for specifying a path. `System.getProperty("user.home")` is used to find the local home directory.

```java
Path p = Paths.get(
  System.getProperty("user.home"),
  "tmp", 
  "myfile.txt"
);
```

**Note**: This will not work in versions previous to Java 7.


---

## Practice

What does `Paths` helper class do?

???

- Converts a path String to a Path object.
- Converts a Path object to a path String.
- Returns a path String to the local folder.
- Returns only a Path object to the user's home folder.


---

## Revision

Which is the shorthand equivalent of the following command that returns a Path object from a String?

```java
FileSystems.getDefault()
  .getPath("/myDocs/diary.txt");

???
```

- `Paths.get("/myDocs/diary.txt");`
- `Paths.get(/myDocs/diary.txt);`
- `Path.get("/myDocs/diary.txt");`
- `Path.getPath("/myDocs/diary.txt");`
