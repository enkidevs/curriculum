---
author: enki-ai
category: how-to
type: normal
practiceQuestion:
  context: relative
  formats:
    - fill-in-the-gap
revisionQuestion:
  context: relative
  formats:
    - fill-in-the-gap
---

# Kotlin Input Conversion

---
## Content

When receiving user input in Kotlin, it is initially read as a String (text). To perform calculations or logic, you need to convert it to the appropriate type, like Int for numbers.

```kotlin
fun main() {
    println("Enter your current age:")
    val ageInput = readLine() ?: "0" // Read input and ensure it’s not null
    val age = ageInput.toInt() // Convert input to Int
    val yearsLeft = 65 - age // Calculate years until retirement
    println("You have $yearsLeft years until retirement.")
}
```

Without converting input to the correct type, you can’t perform meaningful operations like math or comparisons. For example, "25" is text and can’t be used in arithmetic, but 25 as an Int can.

> 💡 Use `toInt()`, `toDouble()`, `toBoolean()`, etc. to convert input to the correct type.
---
## Practice

How do you convert a `String` to an `Int` in Kotlin?

???

- toInt()
- toString()
- toBoolean()


---
## Revision

What type does `readLine()` return before conversion?

???

- `String`
- `Int`
- `Boolean`


