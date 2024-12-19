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

# Throwing Exceptions

---
## Content

You can cause exceptions yourself using the `throw` keyword when something goes wrong:

```kotlin
fun divide(a: Int, b: Int): Int {
    if (b == 0) {
        // Throw an exception explicitly
        throw ArithmeticException("Cannot divide by zero")
    }
    return a / b
}
```

Common exceptions to throw:
- `IllegalArgumentException`
- `IllegalStateException`
- `ArithmeticException`

---

## Practice

Complete the code to throw an exception for invalid age:

```kotlin
fun validateAge(age: Int) {
    if (age < 0) {
        ??? ???("Age cannot be negative")
    }
}
```

- `throw`
- `IllegalArgumentException`
- `Exception`
- `error`

---

## Revision

To signal an error condition in your code, use the ??? keyword.

- `throw`
- `catch`
- `try`
- `error`
