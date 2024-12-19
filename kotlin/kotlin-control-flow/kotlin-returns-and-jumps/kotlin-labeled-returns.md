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

# Labeled Returns

---
## Content

Labels in Kotlin allow you to specify which function or loop to return from:

```kotlin
fun outer() {
    listOf(1, 2, 3).forEach label@ {
        if (it == 2) return@label  // Returns from forEach only
        println(it)
    }
    println("This will be printed")
}
```

You can also use implicit labels with the function name:

```kotlin
fun outer() {
    listOf(1, 2, 3).forEach {
        if (it == 2) return@forEach  // Same as using @label
        println(it)
    }
    println("This will be printed")
}
```

> 💡 Labels help control the flow in nested functions and loops.

---

## Practice

Complete the code to return from the forEach loop:

```kotlin
fun process() {
    listOf(1, 2, 3).forEach ??? {
        if (it == 2) ???
        println(it)
    }
}
```

- `label@`
- `return@label`
- `@label`
- `break@label`

---

## Revision

What's the difference between `return` and `return@label`?

???

- `return exits the entire function, return@label exits only the labeled block`
- `They do the same thing`
- `return@label exits the entire function`
- `return exits only the labeled block`
