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

# Constructors and Properties

---
## Content

Class properties are variables that belong to a class.

They can have custom getters and setters, which are special functions to change the value of the property:

```kotlin
class Temperature {
    var celsius: Double = 0.0
        set(value) {
            field = value
            // when we set the celsius value, we also set the fahrenheit value
            fahrenheit = (value * 9/5) + 32
        }

    var fahrenheit: Double = 32.0
        set(value) {
            field = value
            // when we set the fahrenheit value, we also set the celsius value
            celsius = (value - 32) * 5/9
        }
}
```
---

## Practice

What will be printed when this code runs?

```kotlin
class Temperature {
    var celsius: Double = 0.0
        set(value) {
            field = value
            fahrenheit = (value * 9/5) + 32
        }

    var fahrenheit: Double = 32.0
        set(value) {
            field = value
            celsius = (value - 32) * 5/9
        }
}

val temp = Temperature()
temp.celsius = 100
println(temp.fahrenheit)
```

???

- `212.0`
- `100.0`
- `32.0`
- `Error: infinite recursion`

---

## Revision

Complete the syntax for declaring a read-only property with a custom getter:

```kotlin
class User {
    val name: String
        ??? {
            return "User"
        }
}
```

- `get()`
- `set()`
- `get`
- `setter`
