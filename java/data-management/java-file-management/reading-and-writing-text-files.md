---
author: adamMontgomerie
type: normal
category: how-to
tags:
  - file-io
  - char
  - streams
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/io/charstreams.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Reading and writing text files


---

## Content

Java has various I/O classes for reading and writing files. The `FileReader` and `FileWriter` classes can be used to read from and write to text files.

For example, if we need to copy text from one file to another, `FileReader` and `FileWriter` objects can be used in the following way:

```java
FileReader input = null;
FileWriter output = null;
try(
  //open files (potential IOException)
  input = new FileReader("infile.txt");
  output = new FileWriter("outfile.txt");
){
  int c;
  /*read from infile and write to outfile,
  -1 indicates the end of the file*/
  while ((c = input.read()) != -1) {
    output.write(c);
  }
}
...
```

It would be necessary to either catch the potential `IOException` in a `catch` block, or pass it up the call stack. In pre-Java 7, the try-with-resources statement is not possible, and a `finally` block would be necessary to close resources.

**Note**: In the example above, `FileReader.read()` returns the *ASCII code* (int value) of a single character.

`FileWriter.write()` takes the *ASCII code* of the character and casts it to its char value. The casting is easily performed with `(char) c`.


---

## Practice

Consider the following snippet:

```java
input = new FileReader("infile.txt");
int c;
while ((c = input.read()) != -1) {
  System.out.println(c);
}
```

What will be printed to the console?

???

- `c ASCII value.`
- `c as a character.`
- `c as a String.`
- Nothing.


---

## Revision

Why is the try-catch block necessary when reading and writing files with `FileReader/FileWriter`?

???

- In case the paths to the files aren’t valid.
- In case the files are empty.
- In case the we swapped the paths by mistake.
- In case files are too large.
