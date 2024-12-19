---
author: enki-ai
category: must-know
type: normal
practiceQuestion:
  context: relative
  formats:
    - fill-in-the-gap
revisionQuestion:
  context: standalone
  formats:
    - fill-in-the-gap
---

# Finally Block

---
## Content

The `finally` block executes whether an exception occurs or not. It's perfect for cleanup code:

```kotlin
fun readFile() {
    val file = File("data.txt")
    try {
        file.readText()
    } catch (e: FileNotFoundException) {
        println("File not found")
    } finally {
        // Always close the file
        // no matter if an exception occurred or not
        file.close() 
    }
}
```

Common uses for `finally`:
- Closing files
- Closing database connections
- Releasing resources
- Cleanup operations
---

## Practice

Complete the code to ensure the database connection is always closed:

> Don't worry if you don't know what `openDatabase()` or `query()` do, it's just an example.

```kotlin
val db = openDatabase()
try {
    db.query("SELECT * FROM users")
} catch (e: Exception) {
    println("Database error")
} ??? {
    db.???()
}
```

- `finally`
- `close`
- `end`
- `cleanup`

---

## Revision

The ??? block always executes, regardless of whether an exception occurred.

- `finally`
- `catch`
- `try`
- `end`
