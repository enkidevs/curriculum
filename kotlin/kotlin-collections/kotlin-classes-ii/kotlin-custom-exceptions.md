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

# Custom Exceptions

---
## Content

You can create your own exception types by extending the `Exception` class:

```kotlin
class InvalidAgeException(message: String): Exception(message)

fun validateAge(age: Int) {
    if (age < 0) {
        throw InvalidAgeException("Age cannot be negative")
    }
    if (age > 150) {
        throw InvalidAgeException("Age seems too high")
    }
}
```

Using the custom exception:
```kotlin
try {
    validateAge(-5)
} catch (e: InvalidAgeException) {
    println(e.message) // Prints: Age cannot be negative
}
```
---

## Practice

Create a custom exception for invalid email:

```kotlin
class ???(message: String): ??? {
    ???
}
```

- `InvalidEmailException`
- `Exception(message)`
- `// No additional properties needed`
- `Error`
- `init { }`

---

## Revision

Custom exceptions should extend the ??? class.

- `Exception`
- `Error`
- `Throwable`
- `RuntimeException`
