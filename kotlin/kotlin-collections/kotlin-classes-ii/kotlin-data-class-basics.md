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

# Data Class Basics

---
## Content

Data classes in Kotlin are designed to hold data:

```kotlin
// Basic data class
data class User(
    val id: Int,
    val name: String,
    val email: String
)

fun main() {
    // Creating instances
    val user1 = User(1, "John", "john@email.com")
    val user2 = User(1, "John", "john@email.com")
    
    // Automatic toString()
    println(user1)  // User(id=1, name=John, email=john@email.com)
    
    // Automatic equals()
    println(user1 == user2)  // true - structural equality
    println(user1 === user2) // false - referential equality
}
```

> 💡 Data classes automatically provide:
> - A meaningful toString() method
> - equals() and hashCode() for comparison
> - Component functions for destructuring
> - A copy() method

---
## Practice

Create a data class for a Product:

```kotlin
??? ??? Product(
    val id: Int,
    ??? name: String,
    val price: Double
)
```

- `data`
- `class`
- `val`
- `var`
- `object`
- `struct`

---
## Revision

What's the main purpose of data classes?

???

- `To hold and manage data with automatic utility functions`
- `To implement business logic`
- `To create singleton objects`
- `To define interfaces` 