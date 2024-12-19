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

# Pure Functions

---
## Content

Pure functions are a fundamental concept in functional programming. They:
1. Always produce the same output for the same input
2. Have no side effects

```kotlin
// Pure function - always returns same result for same input
fun add(a: Int, b: Int): Int {
    return a + b
}

// Not pure - depends on external state
var counter = 0
fun incrementCounter(): Int {
    counter++
    return counter
}

// Pure function with collections
fun doubleNumbers(numbers: List<Int>): List<Int> {
    return numbers.map { it * 2 }
}

// Not pure - modifies input
fun addToList(numbers: MutableList<Int>, value: Int) {
    numbers.add(value)  // Side effect!
}
```

Benefits of pure functions:
- Easier to test
- Predictable behavior
- Thread-safe (more on this later)
- Can be cached (more on this later)

> 💡 Pure functions are like mathematical functions - they just transform input into output.

---
## Practice

Which function is pure?

```kotlin
// A
fun multiply(x: Int, y: Int) = x * y

// B
var sum = 0
fun addToSum(x: Int) {
    sum += x
}

// C
fun printValue(x: Int) {
    println(x)
}
```

???

- `A`
- `B`
- `C`

---
## Revision

A pure function:

???

- `Always returns the same output for the same input`
- `Can modify global variables`
- `Prints to the console`
- `Changes its parameters` 