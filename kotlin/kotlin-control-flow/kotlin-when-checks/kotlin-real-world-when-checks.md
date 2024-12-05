---
author: enki-ai
category: discussion
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

# Real-World `when` checks

Here are some examples of how `when` checks are used in real-world apps.

### Checking Age for a Restricted Event

```kotlin
when (age) {
    in 18..60 -> println("You are eligible to enter the event.")
    in 0..17 -> println("Sorry, you are too young.")
    in 61..120 -> println("Sorry, this event has an upper age limit.")
    else -> println("Invalid age entered.")
}
```
### Validating User Role

```kotlin
when (userRole) {
    "admin", "editor" -> println("You have access to the restricted area.")
    else -> println("You do not have access.")
}
// Outputs: You have access to the restricted area.
```

### Recommending a Product Based On Location

```kotlin
when (location) {
    "New York" -> println("We recommend the 'NYC Explorer' book.")
    "Los Angeles" -> println("We recommend the 'LA Lifestyle' book.")
    "Paris" -> println("We recommend the 'Paris Culture' book.")
    else -> println("We recommend the 'Travel Guide' book.")
}
```

> 😊 Your turn! Leave a comment with a check you do in your daily life and write it like a Kotlin `when`.
>
> 👀 Feel free to view other comments for inspiration.
