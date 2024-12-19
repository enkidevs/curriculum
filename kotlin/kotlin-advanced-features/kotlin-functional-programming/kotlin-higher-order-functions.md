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

# Higher-Order Functions

---
## Content

Higher-order functions either take functions as parameters or return functions:

```kotlin
// Function that takes another function as parameter
fun processNumbers(numbers: List<Int>, processor: (Int) -> Int): List<Int> {
    return numbers.map { processor(it) }
}

// Function that returns another function
fun createMultiplier(factor: Int): (Int) -> Int {
    return { number -> number * factor }
}

// Usage examples
fun main() {
    val numbers = listOf(1, 2, 3, 4)
    
    // Passing a lambda to a higher-order function
    val doubled = processNumbers(numbers) { it * 2 }
    println(doubled)  // [2, 4, 6, 8]
    
    // Using a function returned by another function
    val triple = createMultiplier(3)
    println(triple(4))  // 12
}
```

Common built-in higher-order functions:
```kotlin
val numbers = listOf(1, 2, 3, 4, 5)

// map - transform elements
numbers.map { it * 2 }       // [2, 4, 6, 8, 10]

// filter - select elements
numbers.filter { it % 2 == 0 }  // [2, 4]

// fold - accumulate value
numbers.fold(0) { acc, num -> acc + num }  // 15
```

> 💡 Higher-order functions allow for:
> - Code reusability
> - Abstraction of behavior
> - Functional composition

---
## Practice

Complete the higher-order function:

```kotlin
fun applyToEach(
    numbers: List<Int>, 
    ???: (???) -> ???
): List<Int> {
    return numbers.map { operation(it) }
}
```

- `operation`
- `Int`
- `Int`
- `function`
- `Number`
- `Unit`

---
## Revision

A higher-order function:

???

- `Takes functions as parameters or returns functions`
- `Always returns a value`
- `Never takes parameters`
- `Must be pure`
