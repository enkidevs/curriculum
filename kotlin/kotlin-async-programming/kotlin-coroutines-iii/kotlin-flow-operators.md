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

# Flow Operators

---
## Content

Flow provides many operators for transforming data:

```kotlin
fun numbers(): Flow<Int> = flow {
    for (i in 1..5) emit(i)
}

suspend fun main() {
    numbers()
        .filter { it % 2 == 0 }    // Keep even numbers
        .map { it * it }           // Square them
        .collect { println(it) }    // Print results
}
```

Terminal operators collect values:

```kotlin
suspend fun main() {
    val flow = flow {
        emit(1)
        emit(2)
        emit(3)
    }

    val list = flow.toList()           // As list
    val first = flow.first()           // First value
    val count = flow.count()           // Count values
    val sum = flow.fold(0) { a, b ->   // Reduce values
        a + b
    }
}
```

> 💡 Common Flow operators:
> - Transforming: map, filter, take
> - Combining: zip, combine, merge
> - Error handling: catch, retry
> - State: stateIn, shareIn

---

## Practice

Complete the flow transformation:

```kotlin
flow.filter { ??? > 10 }
    .??? { it * 2 }
```

- `it`
- `map`
- `transform`
- `this`

---

## Revision

To convert a Flow to a List, use:

???

- `toList()`
- `asList()`
- `collect()`
- `toCollection()`
