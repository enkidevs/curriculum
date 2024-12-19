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

# Primary Constructors

---
## Content

Primary constructors in Kotlin are part of the class header:

```kotlin
class Person(
    val name: String,          // Property in primary constructor
    var age: Int = 0          // Constructor parameter with default value
) {
    // Initialization block
    init {
        require(age >= 0) { "Age cannot be negative" }
        println("Creating person: $name")
    }
    
    // Property that uses constructor parameters
    val isAdult: Boolean = age >= 18
}

fun main() {
    val person1 = Person("John")           // Using default age
    val person2 = Person("Alice", 25)      // Specifying age
    
    println(person2.isAdult)  // true
}
```

> 💡 Primary constructors:
> - Are declared in the class header
> - Can have default values
> - Can include property declarations
> - Can use init blocks for initialization logic

---
## Practice

Complete the primary constructor:

```kotlin
class Car(
    ??? model: String,
    ??? year: Int = 2024
) {
    init {
        require(year > 1900) { "Invalid year" }
    }
}
```

- `val`
- `var`
- `const`
- `let`

---
## Revision

The ??? block is used for initialization code in primary constructors.

- `init`
- `constructor`
- `start`
- `begin` 