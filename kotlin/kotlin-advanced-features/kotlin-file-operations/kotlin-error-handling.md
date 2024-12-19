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

# File Error Handling

---
## Content

Proper error handling is crucial when working with files:

```kotlin
fun safeFileOperations() {
    val file = File("data.txt")
    
    try {
        // Basic error handling
        if (!file.exists()) {
            throw FileNotFoundException("File not found: ${file.path}")
        }
        
        val content = file.readText()
        println(content)
    } catch (e: FileNotFoundException) {
        println("File not found: ${e.message}")
    } catch (e: IOException) {
        println("Error reading file: ${e.message}")
    }
}
```

Using runCatching for elegant error handling:
```kotlin
fun elegantErrorHandling() {
    runCatching {
        File("data.txt").readText()
    }.onSuccess { content ->
        println("File content: $content")
    }.onFailure { error ->
        when (error) {
            is FileNotFoundException -> println("File not found")
            is IOException -> println("IO error: ${error.message}")
            else -> throw error
        }
    }
}
```

Common file operation errors:
```kotlin
fun handleCommonErrors() {
    val file = File("data.txt")
    
    // Permission errors
    if (!file.canRead()) {
        println("Cannot read file: no permission")
        return
    }
    
    // Space errors
    if (file.length() > file.freeSpace) {
        println("Not enough space to copy file")
        return
    }
    
    // Lock errors
    if (!file.canWrite()) {
        println("File is locked or read-only")
        return
    }
}
```

> 💡 Error handling best practices:
> - Always use try-catch or runCatching
> - Check permissions before operations
> - Handle specific exceptions
> - Clean up resources in finally blocks

---
## Practice

Complete the error handling code:

```kotlin
??? {
    file.readText()
} ??? { content ->
    println(content)
} ??? { error ->
    println(error.message)
}
```

- `runCatching`
- `onSuccess`
- `onFailure`
- `try`
- `catch`
- `finally`

---
## Revision

Which is the most specific way to handle file errors?

???

- `Using specific exception types in catch blocks`
- `Using a general try-catch`
- `Using println for errors`
- `Ignoring errors` 