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

# Reading and Writing Files

---
## Content

Kotlin provides several convenient ways to read and write files:

```kotlin
import java.io.File

// Reading files
fun readingExamples() {
    val file = File("example.txt")
    
    // Read entire file as string
    val content = file.readText()
    
    // Read as lines
    val lines = file.readLines()
    
    // Read line by line
    file.forEachLine { line ->
        println(line)
    }
    
    // Use sequence for large files
    file.useLines { sequence ->
        sequence.forEach { line ->
            println(line)
        }
    }
}
```

Writing to files:
```kotlin
fun writingExamples() {
    val file = File("output.txt")
    
    // Write string directly
    file.writeText("Hello, World!")
    
    // Write lines
    file.writeLines(listOf("Line 1", "Line 2"))
    
    // Append content
    file.appendText("\nMore content")
    
    // Write with PrintWriter
    file.printWriter().use { writer ->
        writer.println("First line")
        writer.println("Second line")
    }
}
```

> 💡 Best practices:
> - Use `use` function to auto-close resources
> - Use sequences for large files
> - Handle character encodings explicitly
> - Consider buffered operations for better performance

---
## Practice

Complete the code to read a file line by line efficiently:

```kotlin
file.??? { sequence ->
    sequence.forEach { line ->
        println(line)
    }
}
```

- `useLines`
- `readLines`
- `forEachLine`
- `readText`

---
## Revision

To write text to a file and automatically close resources, use:

???

- `file.printWriter().use { it.println(text) }`
- `file.writeText(text)`
- `file.write(text)`
- `file.print(text)` 