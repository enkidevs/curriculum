---
author: enki-ai
type: normal
category: must-know
---

# Tail Recursion

---
## Content

Tail recursion is a special form of recursion where the recursive call is the last operation in the function:

```kotlin
// Not tail recursive - needs to multiply after recursive call
fun factorial(n: Int): Int {
    return if (n == 0) 1 else n * factorial(n - 1)
}

// Tail recursive version
tailrec fun factorialTail(n: Int, accumulator: Int = 1): Int {
    return when (n) {
        0 -> accumulator
        else -> factorialTail(n - 1, n * accumulator)
    }
}
```

Kotlin optimizes tail recursive functions with the `tailrec` modifier:

```kotlin
// Tail recursive sum
tailrec fun sum(n: Int, accumulator: Int = 0): Int {
    return when (n) {
        0 -> accumulator
        else -> sum(n - 1, accumulator + n)
    }
}

// Tail recursive Fibonacci
tailrec fun fibonacci(n: Int, a: Int = 0, b: Int = 1): Int {
    return when (n) {
        0 -> a
        1 -> b
        else -> fibonacci(n - 1, b, a + b)
    }
}
```

> 💡 Benefits of tail recursion:
> - No stack overflow risk
> - Compiler optimizes to loop
> - Better performance
> - Same readability as regular recursion

---
## Practice

Complete the tail recursive function:

```kotlin
??? fun sumEven(n: Int, acc: Int = 0): Int {
    return when {
        n <= 0 -> ???
        n % 2 == 0 -> sumEven(n - 2, ??? + n)
        else -> sumEven(n - 1, acc)
    }
}
```

- `tailrec`
- `acc`
- `acc`
- `recursive`
- `sum`
- `n`

---
## Revision

A tail recursive function must:

???

- `Have the recursive call as its last operation`
- `Always use an accumulator`
- `Have multiple base cases`
- `Return void` 