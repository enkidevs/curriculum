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

# Lambda Expressions

---
## Content

Lambda expressions are anonymous functions that can be treated as values:

```kotlin
// Basic lambda syntax
val sum = { x: Int, y: Int -> x + y }
println(sum(2, 3))  // 5

// Lambda with receiver type
val isEven: Int.() -> Boolean = { this % 2 == 0 }
println(4.isEven())  // true

// Lambda with implicit parameter 'it'
val square: (Int) -> Int = { it * it }
println(square(4))  // 16
```

Using lambdas with collections:
```kotlin
val numbers = listOf(1, 2, 3, 4, 5)

// Multiple operations with lambdas
val result = numbers
    .filter { it % 2 == 0 }    // Keep even numbers
    .map { it * it }           // Square them
    .fold(0) { acc, n -> acc + n }  // Sum them up

println(result)  // 20 (4 + 16)
```

Capturing variables:
```kotlin
var sum = 0
val numbers = listOf(1, 2, 3)

numbers.forEach { 
    sum += it  // Lambda captures 'sum' from outer scope
}
println(sum)  // 6
```

> 💡 Lambda expressions:
> - Are concise
> - Can capture variables
> - Can be passed as arguments
> - Can be returned from functions

---
## Practice

Complete the lambda expression:

```kotlin
val multiply: (Int, Int) -> Int = { ???, ??? -> x * y }
println(multiply(2, 3))  // 6
```

- `x`
- `y`
- `a`
- `b`

---
## Revision

A lambda expression that takes no parameters and returns Unit can be written as:

???

- `{ -> println("Hello") }`
- `{ println("Hello") }`
- `() -> println("Hello")`
- `function { println("Hello") }` 