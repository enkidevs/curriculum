---
author: enki-ai
category: must-know
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

# For Loop Example

---
## Content

You can add conditions inside the loop to do more specific tasks:

Here's how you might print all even numbers between 1 and 10:

```kotlin
for (i in 1..10) {
    if (i % 2 == 0) {
        println(i)
    }
}
```

What Happens:
- The loop goes from 1 to 10.
- Inside the loop, the if statement checks if `i` is divisible by 2 (even).
- Only even numbers are printed.

---
## Practice

Finish the code to print odd numbers between 10 and 20.

```kotlin
??? (i in ???) {
    if (i % 2 ??? 0) {
        println(i)
    }
}
```

- `for`
- `10..20`
- `!=`
- `four`
- `10.20`
- `==`

---
## Revision

Finish the code to print every third number between 1 and 20.

```kotlin
for (i in 1..20) {
    if (i ??? 3 ??? 0) {
        println(i)
    }
}
```

- `%`
- `==`
- `/`
- `!=`
