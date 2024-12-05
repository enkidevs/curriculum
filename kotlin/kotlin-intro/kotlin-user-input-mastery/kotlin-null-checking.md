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

# Null Checking

---
## Content

Besides using the Elvis operator, we can also check if a value is `null` or empty with the `isNullOrEmpty()` function.

```kotlin
println("Enter your username:")
val username = readLine()

if (username.isNullOrEmpty()) {
    println("Username cannot be empty!")
} else {
    println("Welcome, $username!")
}
```

> The `isNullOrEmpty()` function returns `true` if the value is `null` or empty.

---
## Practice

Finish the code such that it will not cause an error when `username` is `null`:

```kotlin
val username: String? = null
if (username???) {
    println("Username cannot be empty!")
} else {
    println("Welcome, $username!")
}
```

- `.isNullOrEmpty()`
- `?.isEmpty()`
- `isNull()`
- `isNotNull()`

---
## Revision

The function ??? returns `true` if the value is `null`.

- `isNullOrEmpty()`
- `isNullOrBlank()`
- `isEmpty()`
- `isNotEmpty()`
