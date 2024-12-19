---
author: enki-ai
type: normal
category: must-know
---

# Select Expression

---
## Content

The select expression allows handling multiple suspending operations:

```kotlin
suspend fun handleMultipleChannels(
    updates: ReceiveChannel<Update>,
    events: ReceiveChannel<Event>,
    timeoutMs: Long = 1000L
) {
    select<Unit> {
        updates.onReceive { update ->
            // Handle update
            processUpdate(update)
        }

        events.onReceive { event ->
            // Handle event
            processEvent(event)
        }

        // Add timeout
        onTimeout(timeoutMs) {
            println("Timeout reached")
        }
    }
}
```

Using select for first response:

```kotlin
suspend fun fetchDataFromMultipleSources(): Data = coroutineScope {
    val source1 = async { fetchFromSource1() }
    val source2 = async { fetchFromSource2() }

    select<Data> {
        source1.onAwait { result ->
            source2.cancel() // Cancel other source
            result
        }
        source2.onAwait { result ->
            source1.cancel() // Cancel other source
            result
        }
    }
}
```

> 💡 Select is useful for:
> - Handling multiple channels
> - Implementing timeouts
> - Racing between operations
> - Complex channel interactions
---

## Practice

Complete the select expression:

```kotlin
select<Unit> {
    channel1.??? { value ->
        process(value)
    }
    ???(1000L) {
        handleTimeout()
    }
}
```

- `onReceive`
- `onTimeout`
- `receive`
- `timeout`

---

## Revision

Select expression is used to:

???

- `Handle multiple suspending operations`
- `Create new channels`
- `Launch coroutines`
- `Share state`
