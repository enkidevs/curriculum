---
author: adamMontgomerie
type: normal
category: how-to
tags:
  - directories
  - file-system
  - streams
  - file-io
  - iterator
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/io/dirs.html){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# List contents of a directory with `newDirectoryStream`


---

## Content

```java
Path dir = Paths.get("home/dir");
DirectoryStream<Path> stream =
  Files.newDirectoryStream(dir);
```

The object that is returned implements the `Iterable` interface, which allows us to iterate over the contents of the directory:

```java
for(Path file: stream) {
  System.out.println(file.getFileName());
}
```


---

## Revision

Obtain a `DirectoryStream` collection:

```java
Path dir = Paths.("path/dir");
???<Path> stream =
   ???
  .???;
```

- `DirectoryStream` 
- `Files` 
- `newDirectoryStream(dir)` 
- `newDirectoryStream()` 
- `File`
