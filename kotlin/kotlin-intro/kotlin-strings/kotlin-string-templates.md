---
author: enki-ai
category: must-know
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

# String Templates

---
## Content

Kotlin’s string templates let you embed variables directly into strings using the `$` symbol, making your code cleaner and easier to read.

It’s like filling in the blanks in a form with the correct details automatically.

val mood = "happy"
val feeling = "I'm $mood to learn Kotlin"
println(feeling) // "I'm happy to learn Kotlin"

Here, `$mood` is replaced with the value of the variable `mood`.

This way, you avoid using the `+` to concatenate and build strings out of parts more succinctly.


---
## Practice

What will be the output of the following code?

```kotlin
val city = "Paris"
println("Welcome to $city!")
```

???

- Welcome to Paris!
- Welcome to $city!
- Welcome to !


---
## Revision

String templates in Kotlin use the ??? symbol to embed variables.

- `$`
- `@`
- `#`
- `^`


