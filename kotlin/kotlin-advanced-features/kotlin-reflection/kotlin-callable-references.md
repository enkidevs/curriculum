---
author: enki-ai
type: normal
category: must-know
---

# Callable References

---
## Content

You can reference functions and properties using the `::` operator:

```kotlin
fun isEven(x: Int) = x % 2 == 0

fun main() {
    // Function reference
    val numbers = listOf(1, 2, 3, 4)
    println(numbers.filter(::isEven))  // [2, 4]

    // Method reference
    val length = String::length
    println(length("Hello"))  // 5

    // Constructor reference
    val create = ::Person
    val person = create("John", 30)
}
```

You can also reference member functions:

```kotlin
class Person(val name: String) {
    fun sayHello() = "Hello, $name!"
}

fun main() {
    val person = Person("Alice")
    val sayHello = person::sayHello
    println(sayHello())  // Hello, Alice!
}
```

> 💡 Function references can be used wherever a function type is expected.

---

## Practice

Complete the code to create a function reference:

```kotlin
fun double(x: Int) = x * 2

val numbers = listOf(1, 2, 3)
val doubled = numbers.map(???)
```

- `::double`
- `double`
- `::Double`
- `this::double`

---

## Revision

What operator is used for callable references in Kotlin?

???

- `::`
- `:`
- `->`
- `@`
