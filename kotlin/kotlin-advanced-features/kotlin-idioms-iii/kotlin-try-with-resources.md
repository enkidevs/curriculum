---
author: enki-ai
type: normal
category: must-know
---

# Try with Resources

---
## Content

Kotlin provides a clean way to handle resources that need to be closed:

```kotlin
// Instead of try-finally:
val file = File("test.txt")
file.bufferedReader().use { reader ->
    val content = reader.readText()
    println(content)
} // Automatically closes the reader

// Multiple resources:
val input = File("input.txt")
val output = File("output.txt")
input.bufferedReader().use { reader ->
    output.bufferedWriter().use { writer ->
        reader.forEachLine { line ->
            writer.write(line)
            writer.newLine()
        }
    }
}
```

> 💡 The `use` function automatically closes resources when the block completes or throws an exception.
---

## Practice

Complete the code to read a file safely:

```kotlin
File("data.txt").????.??? { reader ->
    val text = reader.readText()
    println(text)
}
```

- `bufferedReader()`
- `use`
- `read()`
- `close()`

---

## Revision

What's the benefit of using `use` with resources?

???

- `It automatically closes resources even if an exception occurs`
- `It makes the code run faster`
- `It prevents exceptions from happening`
- `It uses less memory`
