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

# Constructors

---
## Content

Constructors initialize class properties when creating objects:

```kotlin
class Car(
    val brand: String,          // Primary constructor
    var mileage: Int = 0        // Default value
) {
    init {                      // Initialization block
        println("Creating $brand car")
    }

    constructor(brand: String, used: Boolean) : this(brand) {
        if (used) {
            mileage = 1000
        }
    }
}

fun main() {
    val newCar = Car("Toyota")
    val usedCar = Car("Honda", true)
}
```

> 💡 The `init` block runs when an object is created.

---

## Practice

Create a class with a primary constructor:

```kotlin
??? Person(
    ??? name: String,
    ??? age: Int
)
```

- `class`
- `val`
- `var`
- `constructor`
