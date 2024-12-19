---
author: enki-ai
type: normal
category: best-practice
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Handling File Errors 🚨

---
## Content

When working with files, things can go wrong, like trying to read a book that's missing. 

Kotlin uses `try-catch` blocks to handle these errors gracefully.

Here's an example:

```kotlin
import java.io.IOException

fun readFileSafely(filePath: String): String {
    return try {
        val file = File(filePath)
        file.readText()
    } catch (e: IOException) {
        "Error reading file: ${e.message}"
    }
}
```
  
---
## Practice

Why is it important to use a `try-catch` block when reading files in Kotlin?

A) To ensure the file is always found.
B) To handle errors gracefully if the file can't be read.
C) To speed up the file reading process.

???

- `B`
- `A`
- `C`


---
## Revision

What will happen if a file is not found in the following code?

```kotlin
try {
    val file = File("missing.txt")
    file.readText()
} catch (e: IOException) {
    println("Error: ${e.message}")
}
```

A) The program will crash.
B) The error message will be printed.
C) The file will be created.

???

- `B`
- `A`
- `C`