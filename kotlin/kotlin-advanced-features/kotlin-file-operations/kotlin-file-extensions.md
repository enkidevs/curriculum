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

# File Extensions and Utilities

---
## Content

Kotlin provides useful extensions for working with files:

```kotlin
import java.io.File
import kotlin.io.path.*

// Extension properties
fun fileProperties() {
    val file = File("document.txt")
    
    println(file.extension)         // "txt"
    println(file.nameWithoutExtension)  // "document"
    println(file.invariantSeparatorsPath)  // Platform-independent path
}
```

Path operations using kotlin.io.path:
```kotlin
fun pathOperations() {
    // Create Path object
    val path = Path("folder/subfolder/file.txt")
    
    // Path components
    println(path.name)          // "file.txt"
    println(path.parent)        // "folder/subfolder"
    println(path.extension)     // "txt"
    
    // Path operations
    val absolute = path.absolute()
    val normalized = path.normalize()
    val resolved = path.resolve("another.txt")
}
```

Utility functions:
```kotlin
fun fileUtilities() {
    val source = File("source.txt")
    val target = File("target.txt")
    
    // Copy files
    source.copyTo(target, overwrite = true)
    
    // Move files
    source.moveTo(target, overwrite = true)
    
    // Delete files
    target.deleteIfExists()
    
    // Create temporary files/directories
    val temp = createTempFile(prefix = "temp", suffix = ".txt")
    val tempDir = createTempDirectory("tempDir")
}
```

> 💡 Tips for file operations:
> - Use Path API for platform-independent code
> - Handle file existence checks
> - Consider using extension functions for common operations
> - Always handle exceptions

---
## Practice

Complete the code to get a file's name without extension:

```kotlin
val file = File("document.txt")
val name = file.???
```

- `nameWithoutExtension`
- `baseName`
- `name`
- `fileName`

---
## Revision

To copy a file and overwrite if it exists:

???

- `source.copyTo(target, overwrite = true)`
- `source.copy(target)`
- `source.copyFile(target)`
- `source.moveTo(target)` 