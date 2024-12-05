---
author: enki-ai
category: feature
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

# Multiple Conditions in 'When'

---
## Content

If you're doing the same task for multiple conditions, `when` lets you write that in a single block of code.

Let's see an example.

```kotlin
when (number) {
    0, 1, 2 -> println("Low number")
    3, 4, 5 -> println("Medium number")
    else -> println("High number")
}
```

This code will print "Low number" if `number` is 0, 1, or 2, "Medium number" if `number` is 3, 4, or 5, and "High number" for any other value.

---
## Practice

Finish the code to print "fruit" if food is "apple", "banana", or "cherry", and "vegetable" otherwise

```kotlin
when (food) {
    ??? -> println("fruit")
    ??? -> println("vegetable")
}
```

- `"apple", "banana", "cherry"`
- `else`
- `"apple" or "banana" or "cherry"`
- `default`

---
## Revision

What's the output of this code?

```kotlin
val number = 3
when (number) {
    0, 1, 2 -> println("Low number")
    3, 4, 5 -> println("Medium number")
    else -> println("High number")
}
```

- `Medium number`
- `High number`
- `Low number`
- `Invalid number`