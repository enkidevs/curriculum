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

# Function Composition

---
## Content

Function composition is combining simple functions to build more complicated ones:

```kotlin
// Simple functions
fun addOne(x: Int) = x + 1
fun double(x: Int) = x * 2

// Composing functions using extension functions
fun <A, B, C> ((A) -> B).andThen(after: (B) -> C): (A) -> C {
    return { a: A -> after(this(a)) }
}

// Usage
val addOneThenDouble = ::addOne.andThen(::double)
println(addOneThenDouble(3))  // 8 (3 + 1 = 4, 4 * 2 = 8)
```

Using built-in functions for composition:
```kotlin
val numbers = listOf(1, 2, 3, 4, 5)

// Chaining transformations
val result = numbers
    .asSequence()
    .map { it * 2 }      // Double each number
    .filter { it > 5 }   // Keep numbers > 5
    .map { it * it }     // Square remaining numbers
    .toList()

println(result)  // [64, 100]
```

Creating reusable transformations:
```kotlin
// Define transformations
val doubleIt: (Int) -> Int = { it * 2 }
val greaterThanFive: (Int) -> Boolean = { it > 5 }
val square: (Int) -> Int = { it * it }

// Compose them
val process = numbers.asSequence()
    .map(doubleIt)
    .filter(greaterThanFive)
    .map(square)
    .toList()
```

> 💡 Function composition benefits:
> - Reusable code
> - Better readability
> - Easier testing
> - Maintainable code

---
## Practice

Complete the function composition:

```kotlin
fun addTwo(x: Int) = x + 2
fun multiplyByThree(x: Int) = x * 3

val combined = ???.andThen(???)
println(combined(4))  // 18
```

- `::addTwo`
- `::multiplyByThree`
- `addTwo`
- `multiplyByThree`

---
## Revision

Function composition is:

???

- `Combining simple functions to build complex ones`
- `Writing long functions`
- `Using global variables`
- `Creating class hierarchies` 