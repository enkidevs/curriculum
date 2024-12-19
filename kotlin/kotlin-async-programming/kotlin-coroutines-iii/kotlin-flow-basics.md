---
author: enki-ai
type: normal
category: must-know
---

# Flow Basics

---
## Content

Flow is a type that can emit multiple values sequentially:

```kotlin
fun numbers(): Flow<Int> = flow {
    for (i in 1..3) {
        delay(100)  // Pretend we're doing something
        emit(i)     // Emit next value
    }
}

fun main() = runBlocking {
    // Collect values from flow
    numbers().collect { value ->
        println(value)
    }
}
```

Flows are cold - they only run when collected:

```kotlin
val flow = flow {
    println("Flow started")
    emit(1)
}

println("Before collection")
flow.collect { println(it) }  // Flow starts here
println("After collection")
```

> 💡 Key Flow concepts:
> - Cold by default (like sequences)
> - Built-in cancellation support
> - Exception handling
> - Context preservation

---

## Practice

Complete the flow creation:

```kotlin
val numbers = ??? {
    for (i in 1..5) {
        ???(i)
    }
}
```

- `flow`
- `emit`
- `send`
- `yield`

---

## Revision

Flow is:

???

- `A cold stream of values`
- `A hot stream of values`
- `A single value`
- `A collection`
