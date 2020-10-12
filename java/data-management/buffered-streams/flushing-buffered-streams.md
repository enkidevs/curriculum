---
author: adamMontgomerie
type: normal
category: tip
tags:
  - streams
  - file-io
  - buffers
  - flushing
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/io/buffers.html){website}
---

# Flushing buffered streams


---

## Content

Buffered streams typically only call the native output API once the buffer is full. Sometimes it is appropriate to write from a buffer before it is full; this is called *flushing*.

This can be done by calling the `flush` method which is included in all output stream classes:

```java
outStream.flush();
```

However, it is not always necessary to manually flush a buffer. For example, the `close` method automatically flushes the buffer before closing the stream.
