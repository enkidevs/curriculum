---
author: adamMontgomerie
type: normal
category: how-to
tags:
  - file-io
  - files
  - metadata
  - file-attributes
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/io/fileAttr.html){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Reading file attributes


---

## Content

The `Files` class contains several methods for reading individual file attributes; for example `Files.size(path)` retrieves the file size in bytes.

However, accessing individual file attributes in this way is expensive. If many  attributes need to be accessed, it is better to read them using the `readAttributes` method.

`readAttributes` reads a file's attributes as a bulk operation:

```java
BasicFileAttributes att =
  Files.readAttributes(
    path, 
    BasicFileAttributes.class
  );
```

This will return a set of basic file attributes as a `BasicFileAttributes` object. Methods can then be called on this object to access the necessary attributes:

```java
long size = att.size();
```


---

## Revision

Create a new instance of `BasicFileAttributes` class:

```java
BasicFileAttributes attrs = ???
  .???(path,
  BasicFileAttributes.class);
```

- `Files` 
- `readAttributes` 
- `File` 
- `getAttributes` 
- `read`
