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

# Destructuring Basics

---
## Content

Destructuring declarations allow you to break down an object into multiple variables:

```kotlin
data class Person(val name: String, val age: Int)

fun main() {
    val person = Person("John", 30)

    // Destructuring declaration
    val (name, age) = person

    println(name)  // John
    println(age)   // 30
}
```

Under the hood, this uses component functions:

```kotlin
// What actually happens:
val name = person.component1()
val age = person.component2()
```

> 💡 To support destructuring, a class must provide componentN() functions.

---

## Practice

Complete the destructuring declaration:

```kotlin
data class Point(val x: Int, val y: Int)
val point = Point(10, 20)
val (???, ???) = point
```

- `x`
- `y`
- `first`
- `second`

---

## Revision

What functions are needed for a class to support destructuring?

???

- `componentN() functions`
- `getters and setters`
- `toString() and equals()`
- `destructure() function`
