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

# Data Classes

---
## Content

Data classes in Kotlin are specially designed for holding data, providing useful utility functions automatically.

```kotlin
data class Student(
    val name: String,
    val age: Int,
    val grade: Double
)
```

> 💡 Data classes automatically provide:
> - `toString()` for readable string representation
> - `equals()` for comparing objects
> - `copy()` for creating modified copies

Here's how to use a data class:

```kotlin
fun main() {
    val student = Student("Alice", 20, 95.5)

    // toString()
    println(student)  // Output: Student(name=Alice, age=20, grade=95.5)

    // copy() with modifications
    val olderStudent = student.copy(age = 21)

    // Destructuring (unpacking properties into variables)
    val (name, age, grade) = student
    println("$name is $age years old")  // Output: Alice is 20 years old
}
```
---

## Practice

Complete the data class and use its copy function:

```kotlin
??? ??? Product(
    val name: String,
    ??? price: Double
)

fun main() {
    val product = Product("Phone", 999.99)
    val discounted = product.???(price = 899.99)
}
```

- `data`
- `class`
- `val`
- `copy`
- `new`
- `var`

---

## Revision

What's one advantage of using a data class instead of a regular class?

???

- `Data classes automatically provide toString(), equals(), and other utility methods`
- `Data classes can have more properties`
- `Data classes perform better`
- `Data classes use less memory`
