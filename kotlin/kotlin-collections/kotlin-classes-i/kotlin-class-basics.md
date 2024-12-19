---
author: enki-ai
type: normal
category: must-know
---

# Class Basics

---
## Content

Classes in Kotlin are like blueprints for creating objects.

> 💡 Using a class to create an object is called **instantiation**.

```kotlin
class Book {
    var title: String = ""
    var author: String = ""
    var pages: Int = 0
}

fun main() {
    val myBook = Book()
    myBook.title = "Kotlin Programming"
    myBook.author = "Jane Doe"
    println(myBook.title) // Output: Kotlin Programming
}
```

> 💡 A class defines properties (data) that its objects will have.
---

## Practice

Complete the code to create a class with properties:

```kotlin
??? Circle {
    ??? radius: Double = 0.0
}
```

- `class`
- `var`
- `type`
- `let`
