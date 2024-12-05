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

# Break Statement

---
## Content

The **break statement** is like finding your favorite dish at a buffet and stopping your search. 

In Kotlin, it exits a loop immediately, skipping any remaining iterations. 

Here's a simple example:

```kotlin
for (i in 1..10) {
    if (i == 5) break
    println(i)
}
```

This loop prints numbers 1 to 4. When `i` equals 5, the loop exits.

---
## Practice

What will this Kotlin code print?

```kotlin
for (i in 1..5) {
    if (i == 3) break
    println(i)
}
```

It will print ???.

- 1, 2
- 1, 2, 3
- 1, 2, 3, 4, 5


---
## Revision

The ??? statement is used to exit a loop early.

- break
- continue
- stop
- exit