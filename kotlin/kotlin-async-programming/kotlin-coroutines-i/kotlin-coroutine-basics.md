---
author: enki-ai
type: normal
category: must-know
---

# Coroutine Basics

---
## Content

Coroutines are lightweight threads that can be suspended and resumed:

```kotlin
fun main() = runBlocking {
    // Start a coroutine
    launch {
        delay(1000L)  // Non-blocking delay
        println("World!")
    }
    println("Hello,")  // Main coroutine continues
}
```

> 💡 `runBlocking` is a coroutine builder that blocks the current thread until the coroutine completes.

> 💡 `launch` is a coroutine builder that starts a new coroutine without blocking the current thread.

Coroutines are much more efficient than threads:

```kotlin
fun main() = runBlocking {
    // Create 100,000 coroutines
    repeat(100_000) {
        launch {
            delay(1000L)
            print(".")
        }
    }
}
```

> 💡 Key benefits of coroutines:
> - Lightweight (thousands can run on a single thread)
> - Built-in cancellation support
> - Structured concurrency
> - No callback hell
---

## Practice

Complete the code to start a coroutine:

```kotlin
fun main() = runBlocking {
    ??? {
        delay(1000L)
        println("Done!")
    }
}
```

- `launch`
- `start`
- `async`
- `run`

---

## Revision

Coroutines are:

???

- `Lightweight threads that can be suspended`
- `Regular threads`
- `Background processes`
- `System threads`
