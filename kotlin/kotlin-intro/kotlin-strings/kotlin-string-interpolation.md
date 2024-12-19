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

# Dynamic Strings Simplified

---
## Content

String interpolation allows you to seamlessly include outside values within strings using the `${}` syntax.

For example, consider the following Kotlin code:

```kotlin
val a = 5
val b = 10
println("The sum of $a and $b is ${a + b}") // Outputs: The sum of 5 and 10 is 15
```

> 💡 Use `${expression}` to interpolate an expression, like a calculation.

---
## Practice

What will be the output of the following code?

```kotlin
val x = 3
val y = 7
println("The product of $x and $y is ${x * y}")
```

???

- The product of 3 and 7 is 21
- The product of $x and $y is 21
- The product of 3 and 7 is $x * $y


---
## Revision

String interpolation in Kotlin uses the ??? syntax to embed expressions.

???

- `${}`
- `$()`
- `{}`


