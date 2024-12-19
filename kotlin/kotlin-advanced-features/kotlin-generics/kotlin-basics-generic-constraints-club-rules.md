---
author: enki-ai
type: normal
category: feature
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Generic Constraints: Club Rules 🎟️

---
## Content

Generic constraints in Kotlin are like setting a rule that only allows certain items into a club.

Here's how you restrict types in a function:

```kotlin
fun <T> sumNumbers(list: List<T>): Double where T : Number {
    return list.sumOf { it.toDouble() }
}
```

- **`where T : Number`**: Restricts `T` to be a subtype of `Number`.

This ensures that only numbers can be summed, maintaining type safety.
  
---
## Practice

What does the `where T : Number` clause do in a Kotlin function?

A) It allows any type to be used.
B) It restricts `T` to be a subtype of `Number`.
C) It makes `T` a string.

???

- `B`
- `A`
- `C`


---
## Revision

How would you write a Kotlin function that only accepts lists of numbers?

```kotlin
fun <T> calculateSum(list: List<T>): Double ???
```

A) where T : Number
B) where T : String
C) where T : Any

???

- `A`
- `B`
- `C`