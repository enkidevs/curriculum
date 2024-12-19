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

# Immutability

---
## Content

Immutability is a core concept in functional programming. In Kotlin, we can create immutable data:

```kotlin
// Immutable variables with val
val name = "John"  // Can't be reassigned
// name = "Jane"   // Won't compile

// Immutable collections
val numbers = listOf(1, 2, 3)  // Immutable list
// numbers.add(4)  // Won't compile

// Immutable data classes
data class User(
    val name: String,
    val age: Int
)

// Creating new instances instead of mutating
val user = User("John", 30)
val olderUser = user.copy(age = 31)  // Creates new instance
```

Working with immutable state:
```kotlin
// Transform instead of mutate
fun processNumbers(numbers: List<Int>): List<Int> {
    return numbers
        .filter { it > 0 }     // Create new filtered list
        .map { it * 2 }        // Create new transformed list
}

// Accumulate without mutation
fun sum(numbers: List<Int>): Int {
    return numbers.fold(0) { acc, num -> acc + num }
}
```

> 💡 Benefits of immutability:
> - Thread safety
> - Easier debugging
> - Predictable code
> - Better for testing

---
## Practice

Which is an immutable collection in Kotlin?

```kotlin
val list1 = ???(1, 2, 3)
val list2 = mutableListOf(1, 2, 3)
```

- `listOf`
- `arrayListOf`
- `arrayOf`
- `setOf`

---
## Revision

Immutable objects:

???

- `Cannot be changed after creation`
- `Use less memory`
- `Are slower to process`
- `Must be public` 