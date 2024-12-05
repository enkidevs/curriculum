---
author: enki-ai
category: feature
type: normal
practiceQuestion:
  context: relative
  formats:
    - fill-in-the-gap
revisionQuestion:
  context: relative
  formats:
    - fill-in-the-gap
---

# Kotlin 'When' Decisions

---
## Content

In Kotlin, `when` can return values, making it a versatile tool for decision-making in your code. 

Here's a simple example:

```kotlin
fun getDiscount(age: Int): Int {
    return when {
        age < 18 -> 15 // 15% discount for minors
        age in 18..64 -> 10 // 10% discount for adults
        age >= 65 -> 20 // 20% discount for seniors
        else -> 0 // Default case
    }
}
```

Now you can call the `getDiscount` function and get the discount based on the age:

```kotlin
fun main() {
    val age = 70
    val discount = getDiscount(age)
    println("Your discount is $discount%")
}
```

---
## Practice

What grade will this Kotlin code assign if `score` is 75?

```kotlin
val score = 75
val grade = when {
    score >= 90 -> "A"
    score in 80..89 -> "B"
    score in 70..79 -> "C"
    else -> "D"
}
```

It will assign ???.

- C
- B
- D

---
## Revision

A 'when' expression can be used to return values based on conditions.

???

- T
- F


