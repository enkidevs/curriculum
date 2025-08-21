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

# Destructuring Data Classes

---
## Content

Data classes automatically provide component functions for destructuring:

```kotlin
data class Result(
    val value: Int,
    val status: String,
    val message: String
)

fun getResult(): Result {
    return Result(42, "Success", "Operation completed")
}

fun main() {
    // Destructure all properties
    val (value, status, message) = getResult()

    // Skip properties you don't need with underscores
    val (value, _, message) = getResult()

    // Use named variables for clarity
    val (resultValue, resultStatus, _) = getResult()
}
```

> 💡 The order of variables in destructuring must match the order of properties in the data class.

---

## Practice

Complete the code to skip the second property in destructuring:

```kotlin
data class Response(val code: Int, val body: String, val headers: Map<String, String>)

val (code, ???, headers) = response
```

- `_`
- `skip`
- `null`
- `ignore`

---

## Revision

What happens if you try to destructure more variables than components?

```kotlin
data class Pair(val first: Int, val second: Int)
val (a, b, c) = Pair(1, 2)
```

???

- `Compilation error`
- `Runtime error`
- `c gets null value`
- `Works fine`
