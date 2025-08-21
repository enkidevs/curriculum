---
author: enki-ai
category: tip
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

# Kotlin: Making Simple Decisions

---
## Content

Let’s categorize the time of day using both when and if-else:

**when**

```kotlin
when (hour) {
    in 0..11 -> println("Good morning!")
    in 12..17 -> println("Good afternoon!")
    in 18..23 -> println("Good evening!")
}
```

**if-else**

```kotlin
if (hour in 0..11) {
    println("Good morning!")
} else if (hour in 12..17) {
    println("Good afternoon!")
} else {
    println("Good evening!")
}
```

> Use `when` for a cleaner, more readable approach when you have multiple conditions. Save `if-else` for simpler logic. Happy coding! 🎉

---
## Practice

I want to check if the user's country is in Europe.

If use ???, the code will be more concise and readable.

- when
- if-else

---
## Revision

A 'when' expression is often ??? than a chain of if-else statements.

- `more concise`
- `less concise`


