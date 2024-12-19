---
author: enki-ai
type: normal
category: must-know
---

# Shared State and Concurrency

---
## Content

When multiple coroutines access shared state, you need synchronization:

```kotlin
class Counter {
    private var value = 0

    // Protect shared state with Mutex
    private val mutex = Mutex()

    suspend fun increment() {
        mutex.withLock {
            value++
        }
    }
}
```

Atomic variables provide lock-free synchronization:

```kotlin
class AtomicCounter {
    private val value = AtomicInteger(0)

    fun increment() {
        value.incrementAndGet()
    }

    fun get(): Int = value.get()
}
```

Confined state to a single thread:

```kotlin
val counterContext = newSingleThreadContext("CounterContext")
var counter = 0

runBlocking {
    withContext(counterContext) {
        // All operations on counter are thread-safe
        counter++
    }
}
```

> 💡 Best practices:
> - Use immutable state when possible
> - Confine mutable state to a single coroutine
> - Use proper synchronization when sharing is needed

---

## Practice

Complete the code to protect shared state:

```kotlin
val mutex = ???()
mutex.??? {
    // Access shared state safely
    sharedValue++
}
```

- `Mutex`
- `withLock`
- `Lock`
- `synchronized`

---

## Revision

The safest way to handle shared state is:

???

- `Use immutable state or confine to single coroutine`
- `Always use locks`
- `Don't use synchronization`
- `Use multiple threads`
