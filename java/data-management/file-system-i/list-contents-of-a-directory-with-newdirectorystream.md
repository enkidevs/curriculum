---
author: adamMontgomerie

levels:

  - medium

type: normal

category: how to

tags:

  - directories

  - file-system

  - streams

  - file-io

  - iterator


links:

  - '[docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/io/dirs.html){website}'


---

# List contents of a directory with `newDirectoryStream`

---
## Content

```
Path dir = Paths.get("home/dir");
DirectoryStream<Path> stream =
  Files.newDirectoryStream(dir);
```
The object that is returned implements the `Iterable` interface, which allows us to iterate over the contents of the directory:
```
for(Path file: stream) {
  System.out.println(file.getFileName());
}
```

---
## Revision

Obtain a `DirectoryStream` collection:
```
Path dir = Paths.("path/dir");
???<Path> stream =
   ???
  .???;
```

* `DirectoryStream` 
* `Files` 
* `newDirectoryStream(dir)` 
* `newDirectoryStream()` 
* `File`

 
