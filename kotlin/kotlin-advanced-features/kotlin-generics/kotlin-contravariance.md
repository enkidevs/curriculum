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

# Contravariance with in

---
## Content

Contravariance allows you to use a more general type than originally specified:

```kotlin
// Contravariant (in) - can consume T but not return it
class Consumer<in T> {
    fun process(value: T) { }     // OK
    // fun retrieve(): T = /* ... */ // Not allowed
}

// Real-world example with comparators
interface Comparator<in T> {
    fun compare(first: T, second: T): Int
}

fun main() {
    // Contravariance in action
    val numberComparator: Comparator<Number> = object : Comparator<Number> {
        override fun compare(first: Number, second: Number): Int = 
            first.toDouble().compareTo(second.toDouble())
    }
    
    // Can use Number comparator for Int
    val intComparator: Comparator<Int> = numberComparator
    println(intComparator.compare(1, 2))  // -1
}
```

> 💡 Use `in` when:
> - The class only consumes T
> - You want to allow assignment from more general types
> - You're designing processors or consumers

---
## Practice

Complete the contravariant interface:

```kotlin
interface Processor<??? T> {
    fun process(value: ???)
    // Cannot return T
}
```

- `in`
- `T`
- `out`
- `Any`

---
## Revision

A contravariant type parameter:

???

- `Can only be consumed, not returned`
- `Can only be returned, not consumed`
- `Can be both consumed and returned`
- `Cannot be used at all` 