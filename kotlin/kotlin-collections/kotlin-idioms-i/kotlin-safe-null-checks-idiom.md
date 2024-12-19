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

# Safe Null Checks

---
## Content

Kotlin provides elegant ways to handle null values safely:

```kotlin
// Safe call operator (?.)
val name: String? = null
println(name?.length)  // Prints: null

// Elvis operator (?:)
val length = name?.length ?: 0  // Default value if null

// Safe casts (as?)
val number: Any = "123"
val stringLength = (number as? String)?.length
```

For more complex fallback values:

```kotlin
val data: String? = null
val result = data?.length ?: run {
    // Complex computation for default value
    println("Computing default...")
    42
}
```

> Use these operators to write null-safe code without explicit null checks.

---

## Practice

Complete the safe null handling code:

```kotlin
val user: User? = getUser()
val name = user??? ?: "Unknown"
val age = user?.age ??? 0
```

- `.name`
- `?:`
- `?.name`
- `!!`

---

## Revision

What's the difference between `?.` and `!!`?

???

- `?. is safe and returns null, !! throws NullPointerException`
- `They are exactly the same`
- `!! is safe and returns null`
- `?. throws NullPointerException`
