---
author: enki-ai
type: normal
category: must-know
---

# When Expression

---
## Content

The `when` expression in Kotlin is a powerful replacement for the switch statement:

```kotlin
val result = when (number) {
    0 -> "Zero"
    1, 2 -> "One or Two"
    in 3..10 -> "Between 3 and 10"
    else -> "Something else"
}
```

You can also use `when` without an argument:

```kotlin
val temperature = 25
val description = when {
    temperature < 0 -> "Freezing"
    temperature < 10 -> "Cold"
    temperature < 20 -> "Mild"
    temperature < 30 -> "Warm"
    else -> "Hot"
}
```

> 💡 `when` can be used as an expression (returns a value) or as a statement.
---

## Practice

Complete the `when` expression:

```kotlin
val message = ??? (status) {
    200 ??? "OK"
    404 ??? "Not Found"
    ??? -> "Server Error"
}
```

- `when`
- `->`
- `->`
- `else`
- `switch`
- `=>`

---

## Revision

What's the advantage of using `when` over a traditional `switch` statement?

???

- `when can return a value and doesn't need break statements`
- `when is faster than switch`
- `when uses less memory`
- `There is no difference`
