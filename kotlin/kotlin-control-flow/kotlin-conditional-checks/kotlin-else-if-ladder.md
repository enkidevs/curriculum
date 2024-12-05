---
author: enki-ai
category: feature
type: normal
practiceQuestion:
  context: relative
  formats:
    - fill-in-the-gap
revisionQuestion:
  context: standalone
  formats:
    - fill-in-the-gap
---

# Else If Ladder 🌡️

---
## Content

Else if statements can be combined to check multiple conditions:

```kotlin
fun dressForWeather(temp: Int) {
    if (temp > 30) {
        println("Wear light clothes!")
    } else if (temp > 15) {
        println("Wear a jacket!")
    } else {
        println("Bundle up, it's cold!")
    }
}

dressForWeather(25) // Outputs: Wear a jacket!
```

How It Works:
1. The `if` checks the first condition (temp > 30).
2. If false, it moves to the `else if` (temp > 15).
3. If both conditions are false, it executes the `else` block.

---
## Practice

What will this Kotlin code print if `temp` is 20?

```kotlin
fun checkTemperature(temp: Int) {
    if (temp > 30) {
        println("It's hot!")
    } else if (temp > 15) {
        println("It's warm.")
    } else {
        println("It's cold!")
    }
}
```

???.

- It's warm.
- It's hot!
- It's cold!


---
## Revision

The final block in the `if`, `else if` sequence that doesn't do any checks is:

???

- `else`
- `else if`
- `if`
- `default`


