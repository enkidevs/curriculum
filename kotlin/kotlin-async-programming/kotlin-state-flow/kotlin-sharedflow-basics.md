---
author: enki-ai
type: normal
category: must-know
---

# SharedFlow Basics

---
## Content

SharedFlow is a hot flow that emits values to multiple collectors:

```kotlin
class EventBus {
    private val _events = MutableSharedFlow<Event>()
    val events = _events.asSharedFlow()

    suspend fun emit(event: Event) {
        _events.emit(event)  // Emit event to all collectors
    }
}

// Multiple collectors
fun observeEvents(eventBus: EventBus) {
    // Collector 1
    lifecycleScope.launch {
        eventBus.events.collect { event ->
            handleEvent(event)
        }
    }

    // Collector 2
    lifecycleScope.launch {
        eventBus.events.collect { event ->
            logEvent(event)
        }
    }
}
```

Configure behavior with replay and buffer:
```kotlin
// Keep last 3 events for new collectors
val events = MutableSharedFlow<Event>(
    replay = 3,
    extraBufferCapacity = 10
)
```

> 💡 SharedFlow is perfect for:
> - Event broadcasting
> - Multi-subscriber scenarios
> - When you need replay capability

---

## Practice

Create a SharedFlow with replay:

```kotlin
val flow = ???<String>(
    ??? = 2
)
```

- `MutableSharedFlow`
- `replay`
- `SharedFlow`
- `buffer`

---

## Revision

SharedFlow is:

???

- `A hot flow that can have multiple collectors`
- `A cold flow like regular Flow`
- `A single-value holder like StateFlow`
- `A replacement for channels`
