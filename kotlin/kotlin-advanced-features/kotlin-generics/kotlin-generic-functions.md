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

# Generic Functions

---
## Content

Functions can also be generic, allowing them to work with different types:

```kotlin
// Generic function
fun <T> List<T>.secondOrNull(): T? = 
    if (this.size >= 2) this[1] else null

// Usage
val numbers = listOf(1, 2, 3)
val second = numbers.secondOrNull()    // Returns 2
val empty = listOf<Int>()
val none = empty.secondOrNull()        // Returns null
```

Generic extension functions:
```kotlin
fun <T> T.toSmartString(): String {
    return when (this) {
        is Number -> "Number: $this"
        is String -> "Text: $this"
        else -> "Object: $this"
    }
}

// Usage
println(42.toSmartString())           // "Number: 42"
println("Hello".toSmartString())      // "Text: Hello"
```

Type constraints in functions:
```kotlin
fun <T : Comparable<T>> List<T>.sortedNullsLast(): List<T> {
    return this.sortedWith(nullsLast())
}

// Usage
val list = listOf("b", null, "a")
println(list.sortedNullsLast())       // [a, b, null]
```

> 💡 Generic functions are useful when:
> - The operation can work with multiple types
> - You want to preserve type information
> - You need type-safe operations

---
## Practice

Complete the generic function that swaps two values:

```kotlin
fun <???> swap(pair: Pair<T, T>): Pair<T, T> {
    return Pair(pair.???, pair.???)
}
```

- `T`
- `second`
- `first`
- `Any`
- `next`
- `prev`

---
## Revision

What's the advantage of using a generic function over using `Any` parameters?

???

- `Type safety and no need for casting`
- `Better performance`
- `Smaller bytecode`
- `More flexible code` 