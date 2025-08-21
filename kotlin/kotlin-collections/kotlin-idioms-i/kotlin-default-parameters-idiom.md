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

# Default Parameters

---
## Content

Kotlin allows you to specify default values for function parameters, reducing the need for multiple overloads:

```kotlin
fun createUser(
    name: String,
    age: Int = 0,
    isAdmin: Boolean = false,
    department: String = "General"
) {
    // Function body
}
```

You can call this function in multiple ways:

```kotlin
// Using all default values except name
createUser("John")

// Specifying some parameters
createUser("Jane", age = 25)

// Using named parameters in any order
createUser(
    name = "Alice",
    department = "IT",
    isAdmin = true
)
```

> 💡 Default parameters eliminate the need for multiple function overloads.

---

## Practice

Complete the function with default parameters:

```kotlin
fun sendEmail(
    to: String,
    subject: ??? = "No Subject",
    body: String ??? "",
    isHtml: ??? = false
) {
    // Send email
}
```

- `String`
- `=`
- `Boolean`
- `String?`
- `:`
- `default`

---

## Revision

What's the benefit of using default parameters?

???

- `Reduces the need for multiple function overloads`
- `Makes the code run faster`
- `Reduces memory usage`
- `Improves type safety`
