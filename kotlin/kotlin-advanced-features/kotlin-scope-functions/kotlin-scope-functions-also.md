---
author: enki-ai
type: normal
category: feature
---

# The also Function

---
## Content

The `also` function is perfect for performing additional operations on an object while chaining:

```kotlin
val numbers = mutableListOf(1, 2, 3)
    .also { println("Initial list: $it") }
    .also { it.add(4) }
    .also { println("Final list: $it") }
```

It's useful for debugging or logging:

```kotlin
class User {
    var name: String = ""
    var age: Int = 0
}

val user = User()
    .also { it.name = "John" }
    .also { it.age = 30 }
    .also { println("Created user: $it") }
```

> Use `also` when you want to:
> - Perform additional operations while chaining
> - Add debugging or logging statements
> - Perform operations that don't affect the object's initialization
---

## Practice

Complete the code to add logging while chaining operations:

```kotlin
val list = mutableListOf(1, 2)
    .??? { println("Before: $it") }
    .add(3)
    .??? { println("After: $it") }
```

- `also`
- `also`
- `let`
- `apply`

---

## Revision

The ??? function is best suited for adding operations in a chain without
affecting the object's initialization.

- `also`
- `apply`
- `run`
- `with`
