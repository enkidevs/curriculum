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

# Lists: Expandable Shelves

---
## Content

Lists in Kotlin are like expandable shelves, allowing you to add or remove items, much like adding or removing books from a bookshelf.

```kotlin
fun main() {
    val fruits = mutableListOf("Apple", "Banana", "Cherry")
    fruits.add("Orange") // Add an item
    fruits.remove("Banana") // Remove an item
    println(fruits) // Output: [Apple, Cherry, Orange]
}
```

> 💡 Lists are dynamic in size and created with the `mutableListOf()` function. In coding, **mutable** means "changeable".

Use `add()` to insert new items and `remove()` to delete items, similar to taking a book off the shelf.

> 💡 A **list** is a collection that can grow or shrink as needed.

---
## Practice

What will this Kotlin code print?

```kotlin
val animals = mutableListOf("Cat", "Dog", "Bird")
animals.add("Fish")
animals.remove("Dog")
println(animals)
```

???

- `[Cat, Bird, Fish]`
- `[Cat, Dog, Bird, Fish]`
- `[Cat, Fish]`

---
## Revision

How would you add "Grapes" to this list?

```kotlin
val fruits = mutableListOf("Apple", "Banana")
```

???

- `fruits.add("Grapes")`
- `fruits.insert("Grapes")`
- `fruits.append("Grapes")`
