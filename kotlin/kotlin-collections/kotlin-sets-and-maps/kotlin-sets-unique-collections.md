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

# Sets: Unique Collections

---
## Content

Sets in Kotlin are like a collection of unique stamps - no duplicates allowed!

```kotlin
fun main() {
    val uniqueColors = setOf("Red", "Blue", "Green", "Red")
    println(uniqueColors) // Output: [Red, Blue, Green]

    val mutableFruits = mutableSetOf("Apple")
    mutableFruits.add("Banana")
    mutableFruits.add("Apple") // Won't be added - already exists
    println(mutableFruits) // Output: [Apple, Banana]
}
```

> 💡 `setOf()` creates an immutable set, while `mutableSetOf()` creates one you can modify.

Sets are perfect when you need to ensure uniqueness:

```kotlin
fun main() {
    val visitedCountries = mutableSetOf("France")
    visitedCountries.add("Japan")
    visitedCountries.add("France") // Duplicate ignored
    println(visitedCountries.size) // Output: 2
}
```
---

## Practice

What will this code print?

```kotlin
val numbers = setOf(1, 2, 2, 3, 3, 3)
println(numbers)
```

???

- `[1, 2, 3]`
- `[1, 2, 2, 3, 3, 3]`
- `[3, 2, 1]`

---

## Revision

How do you create a mutable set and add an element to it?

```kotlin
val uniqueNames = ???("Alice")
???.???("Bob")
```

- `mutableSetOf`
- `uniqueNames`
- `add`
- `setOf`
- `append`
