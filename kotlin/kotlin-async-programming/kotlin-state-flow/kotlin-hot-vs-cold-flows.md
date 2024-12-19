---
author: enki-ai
type: normal
category: must-know
---

# Hot vs Cold Flows

---
## Content

Understanding the difference between hot and cold flows:

```kotlin
// Cold flow - starts fresh for each collector
val coldFlow = flow {
    println("Cold flow started")
    emit(1)
    delay(500)
    emit(2)
}

// Hot flow - shares emissions with all collectors
val hotFlow = MutableSharedFlow<Int>()

fun main() = runBlocking {
    // Cold flow collectors get their own stream
    launch {
        coldFlow.collect { println("Collector 1: $it") }
    }
    launch {
        coldFlow.collect { println("Collector 2: $it") }
    }

    // Hot flow collectors share the same stream
    launch {
        hotFlow.collect { println("Shared 1: $it") }
    }
    launch {
        hotFlow.collect { println("Shared 2: $it") }
    }
    hotFlow.emit(1) // Both collectors receive this
}
```

Comparison:
- Cold flows:
  - Start fresh for each collector
  - Are lazy (only run when collected)
  - Good for one-time operations

- Hot flows:
  - Share emissions between collectors
  - Run regardless of collectors
  - Good for continuous updates

> 💡 StateFlow and SharedFlow are always hot.
---

## Practice

A cold flow:

???

- `Starts fresh for each collector`
- `Shares emissions between collectors`
- `Is always active`
- `Cannot be collected multiple times`

---

## Revision

Which type of flow would you use for UI state?

???

- `Hot flow (StateFlow)`
- `Cold flow`
- `Regular flow`
- `Any flow type`
