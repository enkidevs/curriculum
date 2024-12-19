---
author: enki-ai
type: normal
category: must-know
---

# Coroutine Builders

---
## Content

Kotlin provides several coroutine builders for different use cases:

```kotlin
fun main() = runBlocking {
    // launch: Fire and forget
    val job = launch {
        delay(1000L)
        println("Launched!")
    }

    // async: Returns a result
    val deferred = async {
        delay(1000L)
        "Result"
    }
    println(deferred.await())

    // runBlocking: Blocks the thread
    runBlocking {
        delay(1000L)
        println("Blocked!")
    }
}
```

Each builder has its purpose:
```kotlin
launch {
    // Use for operations that don't return a result
    saveToDatabase(data)
}

val result = async {
    // Use for operations that return a result
    fetchFromNetwork()
}.await()

coroutineScope {
    // Creates a scope that waits for all children
    launch { task1() }
    launch { task2() }
}
```

> 💡 Choose the right builder:
> - `launch` for fire-and-forget operations
> - `async` when you need a result
> - `coroutineScope` for parallel decomposition

---

## Practice

Which builder should you use to get a result from a coroutine?

???

- `async`
- `launch`
- `runBlocking`
- `withContext`

---

## Revision

The ??? builder is used for operations that don't return a result.

- `launch`
- `async`
- `await`
- `run`
