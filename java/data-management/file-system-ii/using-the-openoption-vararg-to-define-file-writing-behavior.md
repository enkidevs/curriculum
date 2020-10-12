---
author: adamMontgomerie
type: normal
category: tip
tags:
  - file-io
  - streams
  - creating-files
  - writing
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/io/file.html){website}
---

# Using the `OpenOption...` vararg to define file writing behavior


---

## Content

The `OpenOption` parameter is an optional argument which can take one or more values which define file writing behavior.

The `Files.newOutputStream` method can take one or more `CopyOption` arguments:

```java
OutputStream out = new BufferedOutputStream(
  Files.newOutputStream(
    path, //Path to file
    CREATE, //CopyOption
    APPEND  //CopyOption
  )
);
```

`CREATE` specifies that a file is to be created if it does not already exist, and `APPEND` specifies that if a file already exists then the new data will be appended to the end of it.

There are several other available `CopyOption` arguments such as `DELETE_ON_CLOSE`.
