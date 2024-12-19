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

# Multiple Catch Blocks

---
## Content

Sometimes, the code inside a `try` block can cause different types of exceptions.

You can handle these exceptions with multiple `catch` blocks, each handling a different type of exception:

```kotlin
try {
    val number = readLine()!!.toInt()
    val result = 100 / number
    println(result)
} catch (e: NumberFormatException) {
    println("Please enter a valid number")
} catch (e: ArithmeticException) {
    println("Cannot divide by zero")
} catch (e: Exception) {
    println("Something else went wrong")
}
```

The catches are checked in order:
1. Most specific exceptions first
2. More general exceptions later
3. Generic `Exception` catches any remaining errors
---

## Practice

Arrange these catch blocks in the correct order:

```kotlin
try {
    // Some code
} catch (e: ???) {
    // Handle specific error
} catch (e: ???) {
    // Handle any error
}
```

- `NumberFormatException`
- `Exception`
- `Error`
- `Throwable`

---

## Revision

Multiple catch blocks should be ordered from ??? to ???.

- `most specific`
- `most general`
- `least important`
- `most important` 
