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

# Mutable vs Immutable Maps

---
## Content

In Kotlin, you can choose between immutable and mutable maps based on your needs.

Immutable maps are created with `mapOf()`:
```kotlin
fun main() {
    val constants = mapOf(
        "PI" to 3.14,
        "E" to 2.718
    )
    // constants["PI"] = 3.14159 // Error: Map is read-only
}
```

Mutable maps are created with `mutableMapOf()`:
```kotlin
fun main() {
    val inventory = mutableMapOf(
        "apple" to 5,
        "banana" to 3
    )

    inventory["apple"] = 4 // Update value
    inventory.remove("banana") // Remove entry
    inventory["orange"] = 2 // Add new entry

    println(inventory) // Output: {apple=4, orange=2}
}
```

> 💡 Use immutable maps when the data shouldn't change (like country capitals: `"France" to "Paris"`), and mutable maps when you need to modify the contents (like a shopping cart: `"T-shirt" to $22.50`).

---

## Practice

Which operation will cause an error?

```kotlin
val scores = mapOf("Alice" to 95)
???
```

- `scores["Alice"] = 100`
- `println(scores["Alice"])`
- `scores.keys`
- `scores.values`

---

## Revision

Create a mutable map and add a new entry:

```kotlin
val inventory = ???(
    "item1" to 10
)
inventory[???] = ???
```

- `mutableMapOf`
- `"item2"`
- `20`
- `mapOf`
- `put`
