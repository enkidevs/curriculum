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

# ListOf: Read-Only Displays

---
## Content

Sometimes you want to display items that shouldn't be changed, like a museum display case that protects its contents.

In Kotlin, `listOf()` creates such a read-only list:

```kotlin
fun main() {
    val famousPaintings = listOf("Mona Lisa", "Starry Night", "The Scream")
    println(famousPaintings) // Output: [Mona Lisa, Starry Night, The Scream]
    // famousPaintings.remove("Mona Lisa")  // This would cause an error - museum collection is final!
}
```

> 💡 `listOf()` creates an **immutable** list, meaning its contents cannot be changed after creation.

Think of it like a sealed display case - you can look at the items inside, but you can't add, remove, or rearrange them:

```kotlin
fun main() {
    val numbers = listOf(1, 2, 3)
    println(numbers[0]) // You can look: 1
    println(numbers.size) // You can count: 3
}
```

---

## Practice

What happens when you try to add an element to a list created with `listOf()`?

```kotlin
val fruits = listOf("Apple", "Banana")
fruits.add("Orange")
```

???

- It causes an error because the list is read-only
- It adds "Orange" to the list
- It creates a new list with "Orange"

---

## Revision

Which function creates a read-only list in Kotlin?

???

- `listOf()`
- `mutableListOf()`
- `arrayOf()`
