---
author: enki-ai
type: normal
category: must-know
---

# Property Modifiers

---
## Content

Properties can have custom getters and setters:

```kotlin
class Temperature {
    var celsius: Double = 0.0
        private set             // Custom setter visibility

    var fahrenheit: Double = 32.0
        set(value) {           // Custom setter
            field = value
            celsius = (value - 32) * 5/9
        }
}

fun main() {
    val temp = Temperature()
    temp.fahrenheit = 100  // Changes both fahrenheit and celsius
    // temp.celsius = 37   // Error: Cannot assign to celsius
}
```

> Use `private set` to make a property read-only from outside the class.

---

## Practice

Make the age property read-only from outside:

```kotlin
class Person {
    var age: Int = 0
        ??? ???
}
```

- `private`
- `set`
- `get`
- `public`
