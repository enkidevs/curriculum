---
author: enki-ai
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Immutable Data Structures 📦

---
## Content

In Kotlin, **immutable data structures** are like sealed boxes. Once created, they can't be changed.

This ensures data consistency and predictability.

> Kotling is designed such that immutable data structures are the default. For example, `val` is used to declare immutable variables.
>
> When you want mutation, you use it explicitly e.g. `mutableListOf` or `mutableMapOf`.

Immutability prevents accidental changes, making your code more reliable and easier to debug.

Most bugs in programs happen when data is changed unexpectedly. The less things there are that can be changed, the less places there are to make mistakes.
---

## Practice

Complete the following statement about immutable data structures:

Immutable data structures help prevent bugs because ???

A) they can be modified at any time
B) they cannot be changed after creation
C) they use less memory than mutable structures
D) they are faster to process than mutable structures

- `B`
- `A`
- `C`
- `D`

---

## Revision

Given this code:

```kotlin
val numbers = listOf(1, 2, 3)
```

Which of these operations would NOT be allowed?

A) numbers.add(4) 
B) val newNumbers = numbers + 4 
C) numbers.forEach { println(it) } 
D) val sum = numbers.sum()

???

- `A`
- `B`
- `C`
- `D`
