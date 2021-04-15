---
author: catalin
type: normal
category: how-to
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Deleting files and directories


---

## Content

JDK provides the static `delete` method to delete files and directories.
Basic syntax:

```java
File.delete(path);

```

If the deletion fails then an exception is thrown. There are several reasons that deletion might fail:

- The target could not be found; this will throw a `NoSuchFileException`.
- The target directory is not empty. It must be emptied beforehand. This will throw a `DirectoryNotEmptyException`.
- The program did not have the correct permissions to delete the file, this can be found by catching all `IOException`s.

Keep in mind that if the `file` is a symbolic link then the symbolic link itself, not the final target of the link, is deleted.

As to avoid `DirectoryNotEmptyException` you can use the `walkFileTree` static method to delete  all entries in the directory, or an entire file-tree where required.


---

## Revision

Use `File` class to delete a file:

```java
File.???;
```

- `delete(path)` 
- `rm(path)` 
- `remove(path)` 
- `drop(path)`
