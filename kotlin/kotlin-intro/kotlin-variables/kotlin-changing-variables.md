---
author: enki-ai
category: must-know
type: normal
practiceQuestion:
  context: standalone
  formats:
    - fill-in-the-gap
  preferredFormat: fill-in-the-gap
revisionQuestion:
  context: standalone
  formats:
    - fill-in-the-gap
  preferredFormat: fill-in-the-gap
---

# Changing Variables

---
## Content

In Kotlin, you update a variable by simply assigning it a new value—no need to use var again.

```kotlin
var score = 10 // Declare the variable
score = 20    // Update the value
println(score) // Prints: 20
```

> ❗ Note: Variables declared with `val` cannot be changed after they’re set. They’re like locked boxes. 🔒

```kotlin
val name = "Kotlin"
name = "Java" // ❌ This will cause an error
```


---
## Practice

How do you update a variable?

    var score = 10
    ??? // Update the value
    println(score) // Print the updated value

- `score = 5`
- `score is 5`
- `score set to 5`
- `update score to 5`


---
## Revision

Finish the code such that it doesn't lead to not an error:

```kotlin
??? name = "Kotlin"
name = "Java"
```

- val
- var
- dec
- fun


