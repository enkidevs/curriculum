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

# Writing Files ✍️

---
## Content

Writing text to a file in Kotlin is done using the `writeText()` method.

Here's how you do it:

```kotlin
import java.io.File

fun writeToFile(filePath: String, content: String) {
    val file = File(filePath)
    file.writeText(content)
}
```
  
---
## Practice

The ??? method is used to write text to a file in Kotlin.

- `writeText()`
- `readText()`
- `appendText()`

---
## Revision

How would you write "Hello, Kotlin!" to a file named "greeting.txt" in Kotlin?

```kotlin
val file = File("greeting.txt")
???
```

- `file.writeText("Hello, Kotlin!")`
- `file.readText()`
- `file.appendText("Hello, Kotlin!")`