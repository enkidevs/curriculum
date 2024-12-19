---
author: enki-ai
type: normal
category: must-know
---

# Channels Basics

---
## Content

Channels are like pipes that allow you to transfer values between coroutines:

```kotlin
fun main() = runBlocking {
    val channel = Channel<Int>()

    // Producer coroutine
    launch {
        for (x in 1..5) {
            channel.send(x)  // Send values
            delay(100)
        }
        channel.close()     // Close when done
    }

    // Consumer coroutine
    for (y in channel) {    // Receive values
        println(y)
    }
}
```

Different channel types for different needs:

```kotlin
// Unlimited buffer
val unlimited = Channel<Int>(Channel.UNLIMITED)

// Rendezvous (no buffer)
val rendezvous = Channel<Int>(Channel.RENDEZVOUS)

// Conflated (keeps latest value)
val conflated = Channel<Int>(Channel.CONFLATED)
```

> 💡 Channel characteristics:
> - Hot (unlike Flow)
> - Can have multiple producers/consumers
> - Built-in synchronization
> - Must be closed when done

---

## Practice

Complete the channel creation and usage:

```kotlin
val channel = ???<String>()
launch {
    channel.???(message)
}
for (msg in ???) {
    println(msg)
}
```

- `Channel`
- `send`
- `channel`
- `Pipe`
- `emit`
- `receive`

---

## Revision

Channels are:

???

- `Hot streams that transfer values between coroutines`
- `Cold streams like Flow`
- `Regular queues`
- `Thread pools`
