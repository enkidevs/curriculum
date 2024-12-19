---
author: enki-ai
type: normal
category: must-know
---

# Data Classes: The Smart Way

---
## Content

One of Kotlin's most powerful idioms is the data class - a concise way to create classes that hold data:

```kotlin
data class Customer(
    val name: String,
    val email: String,
    val company: String = ""  // Optional parameter
)
```

This single line provides:
- Property getters/setters
- `equals()`/`hashCode()` pair
- `toString()` of the form "Customer(name=John, email=john@example.com)"
- `copy()` function
- Component functions for destructuring

Using the data class:

```kotlin
val customer = Customer("John", "john@example.com")
val copy = customer.copy(email = "new@example.com")

// Destructuring
val (name, email) = customer
println("$name's email is $email")
```

> 💡 Use data classes when you need a class primarily for holding values, without any additional behavior.
---

## Practice

What's NOT automatically provided by a data class?

???

- `Custom business logic methods`
- `toString() method`
- `equals() method`
- `copy() function`

---

## Revision

Complete the data class definition:

```kotlin
??? ??? User(
    val name: ???,
    val age: Int
)
```

- `data`
- `class`
- `String`
- `object`
- `struct`
- `Int`
