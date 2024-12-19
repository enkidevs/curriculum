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

# String Interpolation

---
## Content

Kotlin provides a clean way to embed variables and expressions inside strings using the `$` symbol:

```kotlin
val name = "John"
val age = 30

// Simple variable interpolation
println("Hello, $name!")

// Expression interpolation
println("You'll be ${age + 1} next year")

// Accessing properties
data class User(val name: String)
val user = User("Alice")
println("User's name: ${user.name}")
```

You can also use string templates in raw strings:

```kotlin
val path = """
    User: $name
    Age: $age
    Next year: ${age + 1}
""".trimIndent()
```

> Use `$` for simple variables and `${}` for expressions or properties.

---

## Practice

Complete the string interpolation:

```kotlin
val item = "book"
val price = 29.99

println("The ??? costs ???price")
println("With tax: ???{price * 1.2}")
```

- `$item`
- `$`
- `$`
- `${item}`
- `{$price}`
- `$price`

---

## Revision

What's the difference between `$variable` and `${expression}`?

???

- `$variable is for simple variables, ${expression} for complex expressions`
- `They are exactly the same`
- `${expression} is always required`
- `$variable is more efficient`
