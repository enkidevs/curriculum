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

# Transforming Collections

---
## Content

Transforming collections in Kotlin lets you modify each element according to your needs using the `map` function.

```kotlin
fun main() {
    val numbers = listOf(1, 2, 3)

    // Double each number
    val doubled = numbers.map { it * 2 }
    println(doubled) // Output: [2, 4, 6]

    // Convert to strings
    val strings = numbers.map { "Number: $it" }
    println(strings) // Output: [Number: 1, Number: 2, Number: 3]
}
```

> 💡 The `map` function creates a new collection where each element is the result of applying your transformation to the original element.

You can transform complex objects and extract specific properties:

```kotlin
data class Product(val name: String, val price: Double)

fun main() {
    val products = listOf(
        Product("Phone", 999.99),
        Product("Laptop", 1499.99)
    )

    // Extract just the names
    val names = products.map { it.name }
    println(names) // Output: [Phone, Laptop]

    // Apply discount to prices
    val discounted = products.map { it.price * 0.9 }
    println(discounted) // Output: [899.991, 1349.991]
}
```
---

## Practice

Complete the code to convert each number to its square:

```kotlin
val numbers = listOf(1, 2, 3)
val squares = numbers.??? { ??? * ??? }
```

- `map`
- `it`
- `it`
- `filter`
- `num`
- `square`

---

## Revision

What will this code print?

```kotlin
val words = listOf("cat", "dog")
val lengths = words.map { it.length }
println(lengths)
```

???

- `[3, 3]`
- `[cat, dog]`
- `[c, d]`
