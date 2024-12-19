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

# Recursion

---
## Content

Recursion is a technique where a function calls itself to solve a problem, breaking it down into smaller, more manageable parts.

Here's an example of calculating the factorial of a number:

```kotlin
fun factorial(n: Int): Int {
    return if (n == 0) 1 else n * factorial(n - 1)
}

// Example usage:
println(factorial(3)) // Outputs: 6
println(factorial(5)) // Outputs: 120
```

Let's break down how recursion works:


**Base Case:** `n == 0` returns 1, stopping the recursion

**Recursive Step:** `n * factorial(n - 1)` reduces the problem size

**Call Stack:**
   - factorial(3) → 3 * factorial(2)
   - factorial(2) → 2 * factorial(1)
   - factorial(1) → 1 * factorial(0)
   - factorial(0) → 1

This means that for `factorial(3)`, the function will call itself with `factorial(2)`, then `factorial(1)`, and finally `factorial(0)`.

The result of each call is multiplied together to get the final result.

---

## Practice

What is recursion in Kotlin?

A) A technique where a function calls itself to solve a problem. B) A loop that
repeats a task multiple times. C) A method for sorting data.

???

- `A`
- `B`
- `C`

---

## Revision

How would you write a recursive function to calculate the factorial of 4 in
Kotlin?

```kotlin
fun factorial(n: Int): Int {
    return if (n == 0) 1 else ???
}
```

???

- `n * factorial(n - 1)`
- `n + factorial(n - 1)`
- `n - factorial(n - 1)`
