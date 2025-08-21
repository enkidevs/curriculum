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

# Recursion Patterns

---
## Content

Common patterns for solving recursive problems:

```kotlin
// Linear Recursion - one recursive call
fun sum(list: List<Int>): Int {
    if (list.isEmpty()) return 0
    return list.first() + sum(list.drop(1))
}

// Binary Recursion - two recursive calls
fun fibonacci(n: Int): Int {
    return when {
        n <= 0 -> 0
        n == 1 -> 1
        else -> fibonacci(n - 1) + fibonacci(n - 2)
    }
}

// Mutual Recursion - functions call each other
fun isEven(n: Int): Boolean {
    if (n == 0) return true
    return isOdd(n - 1)
}

fun isOdd(n: Int): Boolean {
    if (n == 0) return false
    return isEven(n - 1)
}
```

Divide and Conquer pattern:
```kotlin
fun mergeSort(list: List<Int>): List<Int> {
    // Base case
    if (list.size <= 1) return list
    
    // Divide
    val mid = list.size / 2
    val left = mergeSort(list.take(mid))
    val right = mergeSort(list.drop(mid))
    
    // Conquer (merge)
    return merge(left, right)
}
```

> 💡 Common patterns:
> - Linear recursion
> - Binary recursion
> - Mutual recursion
> - Divide and conquer
> - Backtracking

---
## Practice

What pattern does this code follow?

```kotlin
fun power(base: Int, exp: Int): Int {
    return when {
        exp == 0 -> 1
        exp % 2 == 0 -> {
            val half = power(base, exp / 2)
            half * half
        }
        else -> base * power(base, exp - 1)
    }
}
```

???

- `Divide and conquer`
- `Linear recursion`
- `Binary recursion`
- `Mutual recursion`

---
## Revision

Which recursion pattern involves functions calling each other?

???

- `Mutual recursion`
- `Linear recursion`
- `Binary recursion`
- `Divide and conquer` 