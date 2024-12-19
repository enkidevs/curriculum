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

# File Basics

---
## Content

Kotlin provides several ways to work with files:

```kotlin
import java.io.File

// Creating file references
val file = File("example.txt")
val directory = File("src/main/resources")

// Basic file operations
fun basicFileOperations() {
    // Check if file exists
    if (file.exists()) {
        println("File exists")
    }
    
    // Create new file
    file.createNewFile()
    
    // Create directories
    directory.mkdirs()
    
    // Get file properties
    println("Name: ${file.name}")
    println("Path: ${file.absolutePath}")
    println("Size: ${file.length()} bytes")
    println("Can read: ${file.canRead()}")
}
```

Working with paths:
```kotlin
// Path manipulation
val path = File("folder/subfolder/file.txt")
println("Parent: ${path.parent}")
println("Name: ${path.name}")
println("Extension: ${path.extension}")

// Joining paths
val baseDir = File("base")
val fullPath = File(baseDir, "subfolder/file.txt")
```

> 💡 Best practices:
> - Always use File.separator for cross-platform compatibility
> - Close resources properly
> - Handle exceptions for file operations
> - Use absolute paths when necessary

---
## Practice

Complete the code to create a new directory:

```kotlin
val dir = File("new_folder")
dir.???()
```

- `mkdirs`
- `mkdir`
- `create`
- `new`

---
## Revision

To check if a file exists, use:

???

- `file.exists()`
- `file.isFile()`
- `file.check()`
- `file.present()` 