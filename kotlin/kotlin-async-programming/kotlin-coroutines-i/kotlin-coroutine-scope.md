---
author: enki-ai
type: normal
category: must-know
---

# Coroutine Scope

---
## Content

Coroutine scope defines the lifetime and cancellation of coroutines:

```kotlin
class MyViewModel : ViewModel() {
    // Scope tied to ViewModel lifecycle
    private val scope = viewModelScope

    fun loadData() {
        scope.launch {
            try {
                val data = fetchData()
                processData(data)
            } catch (e: Exception) {
                handleError(e)
            }
        }
    }
}
```

Creating custom scopes:
```kotlin
val scope = CoroutineScope(Dispatchers.Default)

scope.launch {
    // This coroutine is tied to scope
    delay(1000L)
    println("Done!")
}

// Cancel all coroutines in scope
scope.cancel()
```

> 💡 Scopes provide:
> - Structured concurrency
> - Automatic cancellation
> - Resource cleanup
> - Lifecycle management
---

## Practice

Complete the code to create a coroutine scope:

```kotlin
val scope = ???(???)
scope.launch {
    // Coroutine code
}
```

- `CoroutineScope`
- `Dispatchers.Default`
- `Scope`
- `Thread`

---

## Revision

When a scope is cancelled:

???

- `All coroutines in the scope are cancelled`
- `Only the latest coroutine is cancelled`
- `Nothing happens`
- `The app crashes`
