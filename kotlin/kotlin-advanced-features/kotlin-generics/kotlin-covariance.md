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

# Covariance with out

---
## Content

Covariance allows you to use a more derived type than originally specified:

```kotlin
// Covariant (out) - can return T but not consume it
class Producer<out T> {
    fun get(): T = /* ... */      // OK
    // fun set(value: T) { }      // Not allowed
}

// Real-world example with lists
interface ReadOnlyList<out T> {
    fun get(index: Int): T
    fun size(): Int
}

fun main() {
    // Covariance in action
    val strings: ReadOnlyList<String> = listOf("a", "b")
    val objects: ReadOnlyList<Any> = strings    // OK - covariant
    
    // This works because String is a subtype of Any
    val firstObject: Any = objects.get(0)
}
```

> 💡 Use `out` when:
> - The class only produces/returns T
> - You want to allow assignment to more general types
> - You're designing read-only interfaces

---
## Practice

Complete the covariant class:

```kotlin
class Box<??? T> {
    private val value: T
    fun getValue(): ??? = value
}
```

- `out`
- `T`
- `in`
- `Any`

---
## Revision

A covariant type parameter:

???

- `Can only be returned, not consumed`
- `Can only be consumed, not returned`
- `Can be both consumed and returned`
- `Cannot be used at all` 