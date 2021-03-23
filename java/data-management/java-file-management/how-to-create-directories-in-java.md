---
author: pawel
type: normal
category: tip
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# How to create directories in Java


---

## Content

Until Java 7, `mkdir` and `mkdirs` methods of `File` class  were used to create new directories. 

With the implementation of `nio` package in Java 7, this task can now be completed using the `Files` helper class.

To create a new directory:

```java
Path newDir = Paths.get("path");
Files.createDirectory(newDir);
```

If you want to set permission as well, you can pass them as an additional argument:

```java
Set<PosixFilePermissions> perms
     = PosixFilePermissions
        .fromString("rwxr-xr--");
Files.createDirectory(newDir,
    PosixFilePermissions
      .asFileAttribute(perms));

```


---

## Revision

Create a new directory using a helper class introduced with the `nio` package:

```java
Path dir = Paths.get("path");
???
```

- `Files.createDirectory(dir);` 
- `Path.createDirectory(dir);` 
- `File.createDirectory(dir);` 
- `Paths.createDirectory("path");`
