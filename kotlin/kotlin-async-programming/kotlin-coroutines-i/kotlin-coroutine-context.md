---
author: enki-ai
type: normal
category: must-know
---

# Coroutine Context

---
## Content

The coroutine context defines the behavior of a coroutine:

```kotlin
fun main() = runBlocking {
    // Run on a specific dispatcher
    launch(Dispatchers.IO) {
        // I/O operations
    }

    // Run with a timeout
    withTimeout(1000L) {
        // Time-sensitive operations
    }

    // Combine contexts
    launch(Dispatchers.Default + Job()) {
        // Custom context
    }
}
```

Common dispatchers:
```kotlin
Dispatchers.Main    // UI thread (Android)
Dispatchers.IO      // I/O operations
Dispatchers.Default // CPU-intensive work
Dispatchers.Unconfined // No specific thread
```

> 💡 The context includes:
> - Dispatcher (thread pool)
> - Job (control)
> - Name (debugging)
> - Error handler

---

## Practice

Which dispatcher is best for database operations?

???

- `Dispatchers.IO`
- `Dispatchers.Main`
- `Dispatchers.Default`
- `Dispatchers.Unconfined`

---

## Revision

The coroutine context defines:

???

- `How and where a coroutine runs`
- `What a coroutine does`
- `When a coroutine starts`
- `Why a coroutine exists`
