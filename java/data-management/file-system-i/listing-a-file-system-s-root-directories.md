---
author: adamMontgomerie
type: normal
category: feature
tags:
  - directories
  - file-io
  - file-system
  - iterators
  - root-directory
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/io/dirs.html){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Listing a file system's root directories


---

## Content

Using the **static** `FileSystems` class, you can get the default `FileSystem` (note the missing `s`) through the `getDefault()` method.

The `getRootDirectories()` method of `FileSystem`  can be used to acquire a list of root directories on a file system.

An object of type `Iterable` is returned, so the directories can be iterated over in the following way:

```java
FileSystem sys = FileSystems.getDefault();
Iterable<Path> d = sys.getRootDirectories();
for (Path name: d) {
    System.out.println(name);
}
```

This is available from Java 1.7.


---

## Revision

Complete the code snippet below with the missing class such that the code works. 

```java
Iterable<Path> myDir = ???
  .getDefault().getRootDirectories();

```

- FileSystems
- FileSystem
- System
- FileSystemUtils
