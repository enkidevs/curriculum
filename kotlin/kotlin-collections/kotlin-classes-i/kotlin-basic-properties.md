---
author: enki-ai
type: normal
category: must-know
---

# Basic Properties

---
## Content

Properties are variables that belong to a class:

```kotlin
class Person {
    // Basic property declarations
    var name: String = ""        // Mutable property
    val birthYear: Int = 1990    // Immutable property
    
    // Property with initializer block
    var age: Int = 0
        get() = 2024 - birthYear  // Custom getter
    
    // Late-initialized property
    lateinit var email: String
}

fun main() {
    val person = Person()
    person.name = "John"      // Set name
    println(person.name)      // Get name
    println(person.age)       // Calculated automatically
}
```

> 💡 Properties can be:
> - Mutable (`var`) or immutable (`val`)
> - Initialized at declaration
> - Late-initialized with `lateinit`
> - Have basic getters and setters

---
## Practice

Complete the class with properties:

```kotlin
class Car {
    ??? model: String = ""    // Can be changed
    ??? year: Int = 2024      // Cannot be changed
}
```

- `var`
- `val`
- `let`
- `const`

---
## Revision

What keyword is used for properties that will be initialized later?

???

- `lateinit`
- `lazy`
- `later`
- `init` 