# Checking for the existence of files and directories
author: adamMontgomerie

levels:

  - basic

  - beginner

type: normal

category: tip

tags:

  - file-io

  - files

  - paths

links:

  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/io/check.html){website}

---
## Content

When performing operations on files, it is useful to be able to check whether expected files or directories actually exist.

We can check that a file or directory exists by using the `exists` method:
```
File f = new File("path/to/file");
if(f.exists()) {
  ...
}
```
However, `exists` returns `true` for both files and directories. This can cause a problem if we are expecting to be able to open a file and instead are met with a directory.

To solve this, `isFile` and `isDirectory` can be used to check specifically for files and directories respectively:
```
File f = new File("path/to/file");
if(f.isFile()) {
  ...
}
```

---
## Revision

You have the following code snippet:
```
File f = new File("usr/home/enki");
if( ??? ){
  try{
    FileReader reader = new FileReader(f);
    ...
  }catch(Exception e){}
}
```

How would you check if the file exists?
* `f.exists()`
* `f.Exists()`
* `!f.isFile()`
* `!f.isDirectory()`
* `f.toFile()`

---
## Quiz

headline: Can you figure out what check should be included in the following snippet?

question: |
  // What should be checked here such that the below code won't throw errors?
  ```
  public static void main(String[] args) {
    String fileName = "home/path/to/file";
    Stream<String> stream = Files.lines(Paths.get(fileName));
    stream.filter(line -> line.endsWith("enki"));
  }
  ```

answers:
  - If the file exists
  - If the stream is empty
  - If variable 'line' is a string
  - If 'stream.filter()' function exists
