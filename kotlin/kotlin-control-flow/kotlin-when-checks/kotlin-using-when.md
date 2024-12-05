---
author: enki-ai
category: feature
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

# Using 'When' for Decisions

---
## Content

You can use `when` in Kotlin to execute code by comparing a value to many conditions.

Imagine you’re building a traffic light system where the behavior of cars depends on the current light.

```kotlin
fun trafficLightAction(light: String) {
    when (light) {
        "Red" -> println("Stop")
        "Yellow" -> println("Get Ready")
        "Green" -> println("Go")
        else -> println("Invalid light")
    }
}
```

**How it works:**
- The `when` checks the value of the light.
- Based on the value (Red, Yellow, or Green), it executes the corresponding action.
- If the value doesn’t match any case, the `else` block handles it.

---
## Practice

What will this Kotlin code print if `number` is -3?

```kotlin
val number = -3
when {
    number > 0 -> println("Positive")
    number < 0 -> println("Negative")
    else -> println("Zero")
}
```

???

- Negative
- Positive
- Zero

---
## Revision

What will this Kotlin code print if `number` is 3?

```kotlin
val number = 3
when {
    number > 0 -> println("Positive")
    number < 0 -> println("Negative")
    else -> println("Zero")
}
```

???

- Positive
- Negative
- Zero


