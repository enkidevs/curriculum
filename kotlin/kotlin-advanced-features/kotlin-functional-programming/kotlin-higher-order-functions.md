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

# Higher-Order Functions 🛠

---
## Content

A function in Kotlin can be treated as a first-class citizen, just like any other value or object.

> 💡 **Higher-order functions** are functions that either:
> - Take other functions as parameters
> - Return functions as results
> - Or both!

Here's a simple example:

```kotlin
// Takes a function as a parameter
fun operateOnNumbers(
    a: Int,
    b: Int,
    operation: (Int, Int) -> Int
): Int {
    return operation(a, b)
}
```

Let's break this down:
- `operation: (Int, Int) -> Int` is a function type that:
  - Takes two Int parameters
  - Returns an Int result

You can also return functions:

```kotlin
// Returns a function
fun createMathOperation(operationType: String): (Int, Int) -> Int {
    return when (operationType) {
        "add" -> { a, b -> a + b }
        "multiply" -> { a, b -> a * b }
        else -> { a, b -> a }
    }
}
```

And use them together:

```kotlin
val addOperation = createMathOperation("add")
val result = operateOnNumbers(5, 3, addOperation)
// result is 8
```
---

## Practice

Complete the higher-order function that takes a string and a function that
transforms strings:

```kotlin
fun transformString(input: String, ???): String {
    return transform(input)
}
```

- `transform: (String) -> String`
- `(String) -> String`
- `transform: (String)`
- `transform: String`

---

## Revision

A higher-order function is a function that takes another function as a parameter
or returns it as a result.

???

- true
- false
