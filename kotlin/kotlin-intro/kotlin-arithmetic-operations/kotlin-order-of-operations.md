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

# Order of Operations

---
## Content

Kotlin follows the standard order of operations: Parentheses, Exponents, Multiplication/Division, Addition/Subtraction (PEMDAS).

It's like following a recipe step-by-step.

```kotlin
val result = 3 + 5 * 2 - 8 / 4
println(result) // Outputs: 10
```

Step-by-step breakdown:

1. Multiplication: 5 * 2 = 10
2. Division: 8 / 4 = 2
3. Addition/Subtraction: 3 + 10 - 2 = 10

Parentheses let you control the order:

```kotlin
val result = (3 + 5) * (2 - 8 / 4)
println(result) // Outputs: 0
```

Step-by-step breakdown:

1. Parentheses first: (3 + 5) = 8, (2 - 8 / 4) = 0
2. Multiplication: 8 * 0 = 0


---
## Practice

What is the result of `2 + 3 * 4`?

???

- 14
- 20
- 10


---
## Revision

What is the result of `(2 + 3) * 4`?

???

- 20
- 14
- 10


