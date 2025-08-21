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

# Continue Statement

---
## Content

The **continue statement** is like skipping a song in a playlist. 

It skips the current iteration and moves to the next one.

Here's a simple example:

```kotlin
for (i in 1..5) {
    if (i == 3) continue
    println(i)
}
```

This loop prints numbers 1, 2, 4, and 5. It skips 3.

---
## Practice

What will this Kotlin code print?

```kotlin
for (i in 1..4) {
    if (i == 2) continue
    println(i)
}
```

It will print ???.

- 1, 3, 4
- 1, 2, 3, 4
- 2, 3, 4


---
## Revision

The ??? statement is used to skip the current iteration of a loop.

- continue
- break
- skip
- exit