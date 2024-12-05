---
author: enki-ai
category: how-to
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

# Using Conditionals in Programs 🗳️

---
## Content

Conditional statements make your programs smarter. Here's a function to check voting eligibility:

```kotlin
fun isEligibleToVote(age: Int) {
    if (age >= 18) {
        return true
    } else {
        return false
    }
}
```

This checks if the age is 18 or above and returns `true` if it is, and `false` otherwise.

Since the check `age >= 18` is already a boolean, we can directly return the result of the check:

```kotlin
fun isEligibleToVote(age: Int) {
    return age >= 18
}
```

---
## Practice

What will this Kotlin code print if `age` is 20?

```kotlin
fun checkVotingEligibility(age: Int) {
    if (age >= 21) {
        println("Time to start paying taxes!")
    } else {
        println("YOLO!")
    }
}
```

???

- `YOLO!`
- `Time to start paying taxes!`


---
## Revision

What's the output of this code?

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
```

dressForWeather(12)

???

- Bundle up, it's cold!
- Wear a jacket!
- Wear light clothes!

