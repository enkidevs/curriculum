---
author: enki-ai
type: normal
category: must-know
---

# Collection Mapping

---
## Content

Kotlin makes it easy to transform collections using `map`:

```kotlin
val numbers = listOf(1, 2, 3)

// Transform each element
val doubled = numbers.map { it * 2 }

// Chain transformations
val formatted = numbers
    .map { it * 2 }
    .map { "Number: $it" }
```

Map with index and complex transformations:

```kotlin
data class User(val name: String)
val names = listOf("Alice", "Bob", "Charlie")

val users = names.mapIndexed { index, name ->
    User("$name-${index + 1}")
}
```

> Use `mapNotNull` to filter out null values during transformation.

---

## Practice

Transform a list of numbers to their squares:

```kotlin
val numbers = listOf(1, 2, 3)
val squares = numbers.??? { ??? * it }
```

- `map`
- `it`
- `filter`
- `x`
- `transform`
- `select`

---

## Revision

What does `mapNotNull` do?

???

- `Transforms elements and filters out null results`
- `Only transforms non-null elements`
- `Returns null if any element is null`
- `Maps elements to null`
