---
author: adamMontgomerie
type: normal
category: how-to
tags:
  - file-io
  - metadata
  - files
  - filestore
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/io/fileAttr.html){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Retrieving file store attributes


---

## Content

The `Files.getFileStore(Path)` method can be used to retrieve the file store for the specified file. The attributes of the file store can then be accessed.

For example, we can find out the total space, used space and currently available space in the file store:

```java
/*file is a Path object specifying the file
location*/
FileStore store = Files.getFileStore(file);
long total = store.getTotalSpace();
long used = 
  store.getTotalSpace() -
  store.getUnallocatedSpace();
long available = store.getUsableSpace();
```

The returned values  stored in `total`, `used` and `available` are measured in bytes.


---

## Revision

Which class has a method that returns the `FileStore` of a file (`getFileStore(path)`)?

???

- Files
- File
- FileStore
- Storage
- FileMetaData
