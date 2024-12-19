---
author: enki-ai
type: normal
category: feature
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Reading Files 📖

---
## Content

To read text from a file, we create a `File` object and use the `readText()` method.

Here's a simple example:

```kotlin
import java.io.File

fun readFileContent(filePath: String): String {
    val file = File(filePath)
    return file.readText()
}
```

---
## Practice

How would you read the content of a file named "notes.txt" in Kotlin?

```kotlin
val file = File("notes.txt")
val content = ???
```

???

- `file.readText()`
- `file.writeText()`
- `file.delete()`

---
## Revision

Given the following code:

```kotlin
val file = File("notes.txt")
val content = file.readText()
```

What is the purpose of the `readText()` method in this context?

- A) Writes text to a file.
- B) Reads the entire file content as a string.
- C) Uses speech-to-text to read the file content out loud.

???

- `B`
- `A`
- `C`
