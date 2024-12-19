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

# Custom Getters and Setters

---
## Content

Properties can have custom getters and setters (accessors):

```kotlin
class Temperature {
    var celsius: Double = 0.0
        set(value) {           // Custom setter
            field = value      // 'field' refers to the backing field
            fahrenheit = (value * 9/5) + 32
        }

    var fahrenheit: Double = 32.0
        get() = field         // Custom getter
        set(value) {
            field = value
            celsius = (value - 32) * 5/9
        }
}

fun main() {
    val temp = Temperature()
    temp.celsius = 100        // Sets both celsius and fahrenheit
    println(temp.fahrenheit)  // Output: 212.0
}
```

> 💡 Custom accessors:
> - Use `field` to reference the backing field
> - Can perform calculations
> - Can validate values
> - Can trigger other actions

---
## Practice

Complete the property with custom setter:

```kotlin
var score: Int = 0
    set(???) {
        if (value >= 0) {
            ??? = value
        }
    }
```

- `value`
- `field`
- `it`
- `score`

---
## Revision

In a custom setter, the ??? keyword refers to the property's backing field.

- `field`
- `value`
- `this`
- `it` 