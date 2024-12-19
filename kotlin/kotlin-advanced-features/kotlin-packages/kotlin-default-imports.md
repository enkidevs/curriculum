---
author: enki-ai
type: normal
category: must-know
---

# Default Imports

---
## Content

Kotlin automatically imports several packages in every file:

```kotlin
// These are automatically imported:
import kotlin.*
import kotlin.annotation.*
import kotlin.collections.*
import kotlin.comparisons.*
import kotlin.io.*
import kotlin.ranges.*
import kotlin.sequences.*
import kotlin.text.*
```

Platform-specific imports are also included:

```kotlin
// JVM platform:
import java.lang.*
import kotlin.jvm.*

// JS platform:
import kotlin.js.*
```

This means you can use many common classes without explicit imports:

```kotlin
fun main() {
    // List is from kotlin.collections
    val numbers = listOf(1, 2, 3)

    // println is from kotlin.io
    println(numbers)

    // String functions are from kotlin.text
    val text = "Hello".uppercase()
}
```

> 💡 Default imports make common functionality readily available without explicit imports.
---

## Practice

Which package is automatically imported on the JVM platform?

???

- `java.lang.*`
- `java.util.*`
- `java.io.*`
- `java.net.*`

---

## Revision

The package `kotlin.collections.*` is:

???

- `Automatically imported in every Kotlin file`
- `Must be imported manually`
- `Only available on JVM`
- `Only for Android development`
