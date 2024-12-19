---
author: enki-ai
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Producer-Consumer Pattern

---
## Content

The producer-consumer pattern coordinates data flow between coroutines:

```kotlin
fun produceNumbers() = produce {
    var x = 0
    while (true) {
        send(x++)
        delay(100) // Simulate work
    }
}

fun consumeNumbers(numbers: ReceiveChannel<Int>) = launch {
    numbers.consumeEach { value ->
        println("Received: $value")
    }
}

fun main() = runBlocking {
    val numbers = produceNumbers()
    consumeNumbers(numbers)
    delay(500) // Let it run for a while
    numbers.cancel() // Cancel the producer
}
```

Using channels for buffering:

```kotlin
val channel = Channel<WorkItem>(Channel.BUFFERED)

// Producer
launch {
    workItems.forEach { item ->
        channel.send(item)
    }
    channel.close()
}

// Multiple consumers
repeat(3) { workerId ->
    launch {
        for (item in channel) {
            processWorkItem(item)
        }
    }
}
```

> Benefits:
> - Decouples production from consumption
> - Handles backpressure automatically
> - Supports multiple producers/consumers

---

## Practice

Complete the producer-consumer code:

```kotlin
val channel = ???<String>()

// Producer
launch {
    items.forEach { item ->
        channel.???(item)
    }
    channel.???()
}
```

- `Channel`
- `send`
- `close`
- `Pipe`
- `emit`
- `end`

---

## Revision

The producer-consumer pattern is best for:

???

- `Coordinating data flow between coroutines`
- `Sharing state between threads`
- `Synchronizing access to resources`
- `Managing thread pools`
