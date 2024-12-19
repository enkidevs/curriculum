---
author: enki-ai
type: normal
category: must-know
---

# Recursion Basics

---
## Content

Recursion is when a function calls itself to solve a problem:

```kotlin
// Simple factorial calculation using recursion
fun factorial(n: Int): Int {
    // Base case
    if (n == 0) return 1
    
    // Recursive case
    return n * factorial(n - 1)
}

// Usage
println(factorial(5))  // 120 (5 * 4 * 3 * 2 * 1)
```

Key components of recursion:
1. Base case - stops recursion
2. Recursive case - breaks problem into smaller parts

Example with multiple base cases:
```kotlin
// Fibonacci sequence
fun fibonacci(n: Int): Int {
    return when {
        n <= 0 -> 0     // Base case 1
        n == 1 -> 1     // Base case 2
        else -> fibonacci(n - 1) + fibonacci(n - 2)  // Recursive case
    }
}
```

> 💡 When using recursion:
> - Always define base case(s)
> - Ensure problem gets smaller
> - Consider stack space
> - Watch for infinite recursion

---
## Practice

Complete the recursive function to sum numbers from 1 to n:

```kotlin
fun sum(n: Int): Int {
    return if (n == ???) {
        ???
    } else {
        n + ???(n - 1)
    }
}
```

- `1`
- `1`
- `sum`
- `0`
- `add`
- `n`

---
## Revision

What must every recursive function have?

???

- `A base case to stop recursion`
- `A loop`
- `Multiple parameters`
- `Global variables` 