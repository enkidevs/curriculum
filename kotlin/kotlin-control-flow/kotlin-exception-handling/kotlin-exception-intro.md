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

# Understanding Exceptions 🚨

---
## Content

Computer programs are rigid - they expect data and operations to follow exact rules. 

When these rules are broken, the program encounters an **exception** - an error that disrupts normal operation.

Common scenarios that cause exceptions:
1. Dividing by zero
2. Converting invalid text to a number
3. Reading a file that doesn't exist

For example:
```kotlin
// This will crash with NumberFormatException
val number = "abc".toInt()

// This will crash with ArithmeticException
val result = 10 / 0
```

> 💥 When an exception happens, we say it caused the program to crash.

Kotlin provides tools to:
1. Detect exceptions (using `try`)
2. Handle exceptions (using `catch`)
3. Clean up resources (using `finally`)
4. Create custom exceptions (extending `Exception`)

> 🎯 Handling exceptions is like giving your program a second chance to deal with the error gracefully.

---

## Practice

What happens when a program encounters an unhandled exception?

???

- The program crashes
- The program continues running
- The program fixes the error
- The program restarts

---

## Revision

Match the situation with the likely exception:

```kotlin
"abc".toInt() → ???
5 / 0 → ???
```

- NumberFormatException
- ArithmeticException