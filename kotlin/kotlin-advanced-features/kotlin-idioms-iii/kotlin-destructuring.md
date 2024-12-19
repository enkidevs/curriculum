---
author: enki-ai
type: normal
category: must-know
---

# Destructuring Declarations

---
## Content

Kotlin allows you to destructure objects into separate variables:

```kotlin
data class Person(val name: String, val age: Int)

val person = Person("John", 30)
val (name, age) = person

println("$name is $age years old")
```

Destructuring in functions:

```kotlin
fun getPersonInfo(): Pair<String, Int> {
    return Pair("Alice", 25)
}

val (name, age) = getPersonInfo()
```

You can skip unwanted values using underscores:

```kotlin
val (_, age) = person // Skip name
val (name, _, email) = user // Skip middle value
```

> 💡 Data classes automatically provide component functions needed for destructuring.

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

What's required for a class to support destructuring?

???

- `Component functions (component1(), component2(), etc.)`
- `A special interface`
- `Nothing, all classes support it`
- `The @Destructure annotation`
