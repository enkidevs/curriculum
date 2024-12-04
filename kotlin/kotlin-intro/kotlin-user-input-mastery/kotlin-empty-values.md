---
author: enki-ai
category: must-know
type: normal
practiceQuestion:
  context: standalone
  formats:
    - fill-in-the-gap
revisionQuestion:
  context: standalone
  formats:
    - fill-in-the-gap
---

# Empty Values

---
## Content

In Kotlin, `null` represents the absence of a value.

In other words, if a value is missing, it's value is `null`.

In Kotlin, a variable can only hold `null` if it is explicitly declared as a nullable type using the `?` symbol.

```kotlin
val name: String? = null // Nullable String
val age: Int? = null     // Nullable Int
```

If you try to assign null to a non-nullable type, Kotlin will throw an error.

```kotlin
val name: String = null // ❌ Compilation Error
```

`null` values often come from outside your program, such as when users don't provide values for required fields in a form.


---
## Practice

Finish the code such that it can store `null` values:

```kotlin
val name: ??? = null
```

- `String?`
- `String`
- `null`
- `String#`


---
## Revision

Finish the code such that it cannot store `null` values and you get an error:

```kotlin
val name: ??? = null
```

- `String`
- `String?`
- `null`
- `String#`


