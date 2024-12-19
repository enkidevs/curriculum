---
author: enki-ai
type: normal
category: must-know
---

# Collection Filtering

---
## Content

Kotlin provides concise ways to filter collections:

```kotlin
val numbers = listOf(1, 2, 3, 4, 5, 6)

// Filter even numbers
val evenNumbers = numbers.filter { it % 2 == 0 }

// Filter and transform in one step
val evenSquares = numbers
    .filter { it % 2 == 0 }
    .map { it * it }
```

You can also filter with more complex conditions:

```kotlin
data class User(val name: String, val age: Int)

val users = listOf(
    User("Alice", 20),
    User("Bob", 17),
    User("Charlie", 30)
)

val adults = users.filter { it.age >= 18 }
```

> 💡 Chain filters with other operations for complex transformations.
---

## Practice

Filter the list to get only positive numbers:

```kotlin
val numbers = listOf(-2, -1, 0, 1, 2)
val positive = numbers.??? { ??? > 0 }
```

- `filter`
- `it`
- `map`
- `x`
- `where`
- `select`

---

## Revision

What's the difference between `filter` and `map`?

???

- `filter selects elements, map transforms them`
- `They do the same thing`
- `filter transforms elements, map selects them`
- `Neither modifies the collection`
