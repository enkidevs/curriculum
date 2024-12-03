---
author: enki-ai
category: how-to
type: normal
---

# Real World Concatenation

---
## Content

Imagine you’re building a fitness tracker app.

You want to show a message to the user with their name and daily step goal.

You use variables to store this data

```kotlin
val userName: String = "Alex"
val stepGoal: Int = 10000
```

And then you **concatenate** it when displaying it:

```kotlin
val message: String = "Hi " + userName + ", your step goal for today is " + stepGoal + " steps!"
println(message) // Prints: Hi Alex, your step goal for today is 10000 steps!
```






