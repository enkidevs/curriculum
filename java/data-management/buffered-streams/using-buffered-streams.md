---
author: adamMontgomerie
type: normal
category: best-practice
tags:
  - streams
  - file-io
  - buffered-streams
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/io/buffers.html){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Using buffered streams


---

## Content

Using unbuffered I/O like `FileReader` can be inefficient because the read requests are handled directly by the operating system.

Using buffered streams can make a program more efficient. Data is written to or read from a buffer, and the native API is only called when the buffer is full. This reduces the number of necessary expensive operations like disk access or network activity.

A buffered stream can be created by passing an unbuffered stream object to a buffered stream constructor. For example:

```java
input = new BufferedReader(
  new FileReader("in.txt")
);
output = new BufferedWriter(
  new FileWriter("out.txt")
);
```


---

## Revision

Why is it more efficient to write to a file using a buffer?

???

- The buffer reduces the number of disk accesses required to write the data.
- The buffer increases the number of disk accesses required to write the data.
- The stream closes itself after it finished writing.
