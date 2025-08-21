---
author: enki-ai
type: normal
category: feature
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Lambda Expressions 🚀

---
## Content

**Lambda expressions** are like quick notes you jot down. They're anonymous functions that let you write concise code without naming the function.

Here's a simple lambda in Kotlin:

```kotlin
val sum = { a: Int, b: Int -> a + b }
```

In the code above, we store the lambda in a variable called `sum`, which we can use like a function.

```kotlin
val result = sum(1, 2)
println(result) // Output: 3
```

Here's that same lambda as a named function:

```kotlin
fun sum(a: Int, b: Int): Int {
  return a + b
}
```

All lambdas are wrapped in curly braces `{}` and can take parameters and return a value:

```kotlin
{ parameter1: Type, parameter2: Type -> body }
```

> 💡 Lambdas are often used in Kotlin because they are concise and thus quicker to read.
  
---
## Practice

Create a lambda expression that takes two numbers and returns their difference.

```kotlin
val subtract = { ??? ??? ??? ??? ??? ??? }
```

- `a:`
- `Int`
- `b:`
- `Int`
- `->`
- `a - b`
- `a`
- `b`
- `=>`

---
## Revision

In Kotlin, the format of a lambda expression is:

???

- `{ parameter1: Type, parameter2: Type -> body }`
- `{ parameter1 Type, parameter2 Type -> body }`
- `{ parameter1: Type, parameter2: Type => body }`
- `{ parameter1: Type, parameter2: Type --> body }`
