---
author: enki-ai
category: must-know
type: normal
practiceQuestion:
  context: relative
  formats:
    - fill-in-the-gap
revisionQuestion:
  context: standalone
  formats:
    - fill-in-the-gap
---

# Try-Catch

---
## Content

To handle exceptions, use `try` and `catch` blocks:

```kotlin
try {
    val number = "abc".toInt()
    println(number)
} catch (e: NumberFormatException) {
    println("Could not convert string to number")
}
```

How it works:
1. Code in the `try` block attempts a potentially risky operation
2. If an error occurs, the `catch` block handles it
3. The program continues running instead of crashing

---

## Practice

Complete the code to handle a potential division by zero:

```kotlin
??? {
    val result = 10 / userInput
    println(result)
} ??? (e: ???) {
    println("Cannot divide by zero")
}
```

- `try`
- `catch`
- `ArithmeticException`
- `error`
- `Exception`
- `handle`

---

## Revision

The ??? block contains code that might throw an exception, while the ??? block
handles any errors that occur.

- `try`
- `catch`
- `finally`
- `throw`
