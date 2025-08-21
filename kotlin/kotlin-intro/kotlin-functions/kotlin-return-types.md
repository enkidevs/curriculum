---
author: enki-ai
category: must-know
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

# Return Types

---
## Content

In Kotlin, functions must explicitly declare their return type (except for functions that return `Unit`).

```kotlin
// Returns an Integer
fun multiply(a: Int, b: Int): Int {
    return a * b
}

// Returns a String
fun greet(name: String): String {
    return "Hello, $name!"
}

// Returns nothing (Unit)
fun printMessage(msg: String) {
    println(msg)
}

// Returns a Boolean
fun isEven(number: Int): Boolean {
    return number % 2 == 0
}
```

The return type is specified after the function parameters with a colon `:`.

If no return type is specified, Kotlin assumes the function returns `Unit`

> 💡 The `Unit` type is similar to `void` in other languages and it means the function doesn't return anything. You can but don't need to write `Unit` in your code.

---

## Practice

What is the return type of this function?

```kotlin
fun calculateArea(width: Double, height: Double): ??? {
    return width * height
}
```

- Double
- Int
- Float
- String

---

## Revision

Complete the function declaration to return a Boolean:

```kotlin
??? isPositive(num: Int)??? ??? {
    return num > 0
}
```

- fun
- :
- Boolean
- Unit
- void
- return
