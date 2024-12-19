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

# Type Variance

---
## Content

Kotlin supports declaration-site variance with `out` and `in` modifiers:

```kotlin
// Covariant (out) - can return T but not consume it
class Producer<out T> {
    fun get(): T = /* ... */      // OK
    // fun set(value: T) { }      // Not allowed
}

// Contravariant (in) - can consume T but not return it
class Consumer<in T> {
    fun process(value: T) { }     // OK
    // fun retrieve(): T = /* ... */ // Not allowed
}
```

Real-world example:
```kotlin
// Covariant list - can read but not modify
interface ReadOnlyList<out T> {
    fun get(index: Int): T
    fun size(): Int
}

// Contravariant comparison
interface Comparator<in T> {
    fun compare(first: T, second: T): Int
}

// Usage
val strings: ReadOnlyList<String> = listOf("a", "b")
val objects: ReadOnlyList<Any> = strings    // OK - covariant

val numberComparator: Comparator<Number> = object : Comparator<Number> {
    override fun compare(first: Number, second: Number): Int = 
        first.toDouble().compareTo(second.toDouble())
}
val intComparator: Comparator<Int> = numberComparator  // OK - contravariant
```

> Use variance modifiers when:
> - `out` - you only return the type (producers)
> - `in` - you only consume the type (consumers)
> - Neither - you both consume and produce the type

---
## Practice

What variance modifier would you use for a read-only container?

```kotlin
class Container<??? T> {
    private val item: T
    fun get(): T = item
}
```

- `out`
- `in`
- `var`
- `val`

---
## Revision

A type parameter marked as `out` can:

???

- `Be returned but not consumed`
- `Be consumed but not returned`
- `Both be consumed and returned`
- `Neither be consumed nor returned` 