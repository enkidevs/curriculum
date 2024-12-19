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

# Filtering Collections

---
## Content

Filtering collections in Kotlin is like using a sieve to keep only the items you want.

The `filter` function creates a new collection containing only elements that match your condition:

```kotlin
val numbers = listOf(1, 2, 3, 4, 5, 6)

// Keep only even numbers
val evenNumbers = numbers.filter { it % 2 == 0 }
println(evenNumbers) // Output: [2, 4, 6]

// Keep numbers greater than 3
val largeNumbers = numbers.filter { it > 3 }
println(largeNumbers) // Output: [4, 5, 6]
```

> 💡 The `it` keyword refers to each element being processed. Inside the curly braces `{}`, you write a condition that returns `true` for elements you want to keep.

You can also filter more complex objects:

```kotlin
data class Student(val name: String, val age: Int)

fun main() {
    val students = listOf(
        Student("Alice", 20),
        Student("Bob", 19),
        Student("Charlie", 21)
    )

    // Keep students who are 20 or older
    val adults = students.filter { it.age >= 20 }
    println(adults) // Output: [Student(name=Alice, age=20), Student(name=Charlie, age=21)]
}
```
---

## Practice

Complete the code to filter out negative numbers:

```kotlin
val numbers = listOf(-2, -1, 0, 1, 2)
val positive = numbers.??? { ??? ??? 0 }
```

- `filter`
- `it`
- `>`
- `map`
- `>=`
- `num`

---

## Revision

What will this code print?

```kotlin
val words = listOf("cat", "dog", "elephant")
val longWords = words.filter { it.length > 3 }
println(longWords)
```

???

- `[elephant]`
- `[cat, dog]`
- `[cat, dog, elephant]`
