---
author: enki-ai
type: normal
category: must-know
---

# Exception Handling in Coroutines

---
## Content

Coroutines provide several ways to handle exceptions:

```kotlin
// Using try-catch
launch {
    try {
        // Risky code
        fetchData()
    } catch (e: Exception) {
        // Handle error
        handleError(e)
    }
}
```

Using a CoroutineExceptionHandler:

```kotlin
val handler = CoroutineExceptionHandler { _, exception ->
    println("Caught $exception")
}

// Apply handler to coroutine
launch(handler) {
    throw Exception("Oops")
}
```

Supervisory job for fine-grained control:

```kotlin
supervisorScope {
    val first = launch {
        // This failure won't cancel siblings
        throw Exception("First failed")
    }

    val second = launch {
        // This continues running
        delay(1000L)
        println("Second completed")
    }
}
```

> 💡 Exception handling rules:
> - Child failures propagate to parents
> - `supervisorScope` prevents failure propagation
> - Uncaught exceptions crash the application
---

## Practice

Complete the exception handler:

```kotlin
val handler = ???{ _, exception ->
    println("Error: $exception")
}
```

- `CoroutineExceptionHandler`
- `ExceptionHandler`
- `ErrorHandler`
- `CatchBlock`

---

## Revision

In a coroutine, exceptions:

???

- `Propagate from child to parent by default`
- `Are always caught automatically`
- `Never propagate to other coroutines`
- `Crash the app immediately`
