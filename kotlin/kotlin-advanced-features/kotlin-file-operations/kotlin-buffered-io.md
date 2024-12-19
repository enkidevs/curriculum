---
author: enki-ai
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Buffered I/O Operations

---
## Content

Buffered operations improve performance when reading and writing files:

```kotlin
import java.io.BufferedReader
import java.io.BufferedWriter

// Buffered reading
fun bufferedReading() {
    val file = File("large-file.txt")
    
    file.bufferedReader().use { reader ->
        // Read line by line
        reader.lineSequence().forEach { line ->
            println(line)
        }
        
        // Or read with a buffer
        val buffer = CharArray(1024)
        while (reader.read(buffer) != -1) {
            print(buffer)
        }
    }
}
```

Buffered writing:
```kotlin
fun bufferedWriting() {
    val file = File("output.txt")
    
    file.bufferedWriter().use { writer ->
        // Write line by line
        writer.write("First line\n")
        writer.write("Second line\n")
        
        // Or write with a buffer
        val buffer = "Large text".toCharArray()
        writer.write(buffer, 0, buffer.size)
        
        // Don't forget to flush for large operations
        writer.flush()
    }
}
```

Using specific encodings:
```kotlin
fun encodedIO() {
    // Reading with specific encoding
    val content = File("text.txt")
        .bufferedReader(Charsets.UTF_8)
        .use { it.readText() }
    
    // Writing with specific encoding
    File("output.txt")
        .bufferedWriter(Charsets.UTF_8)
        .use { it.write("Text with special chars: ñ, é, ß") }
}
```

> 💡 When to use buffered I/O:
> - Large files
> - Performance-critical operations
> - When working with specific encodings
> - Streaming operations

---
## Practice

Complete the code to read a file with buffering and UTF-8 encoding:

```kotlin
val reader = file.???(???).use { 
    it.readText() 
}
```

- `bufferedReader`
- `Charsets.UTF_8`
- `readBuffer`
- `UTF8`

---
## Revision

Buffered I/O operations are best used for:

???

- `Large files and performance-critical operations`
- `Small text files`
- `Binary files only`
- `Network operations only` 