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

# Break and Continue with Labels

---
## Content

Labels can also be used with `break` and `continue` to specify which loop to break or continue:

```kotlin
outer@ for (i in 1..3) {
    inner@ for (j in 1..3) {
        if (i == 2 && j == 2) break@outer  // Breaks outer loop
        println("$i, $j")
    }
}
```

Using continue with labels:

```kotlin
outer@ for (i in 1..3) {
    for (j in 1..3) {
        if (j == 2) continue@outer  // Continues outer loop
        println("$i, $j")
    }
}
```

> 💡 Labels give you precise control over nested loops.

---

## Practice

Complete the code to break from the outer loop:

```kotlin
outer@ for (i in 1..5) {
    inner@ for (j in 1..5) {
        if (i * j > 10) ???
        println("$i * $j = ${i * j}")
    }
}
```

- `break@outer`
- `break@inner`
- `break outer`
- `break inner`

---

## Revision

What's the difference between `break@outer` and `continue@outer`?

???

- `break exits the loop, continue starts the next iteration`
- `They do the same thing`
- `break starts next iteration, continue exits the loop`
- `Neither affects the outer loop`
