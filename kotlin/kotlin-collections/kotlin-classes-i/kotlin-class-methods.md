---
author: enki-ai
type: normal
category: must-know
---

# Class Methods

---
## Content

Classes can have methods (functions) that define their behavior:

```kotlin
class Book {
    var pages: Int = 0

    fun isLongBook(): Boolean {
        return pages > 300
    }

    fun getSummary(): String {
        return "This book has $pages pages"
    }
}

fun main() {
    val myBook = Book()
    myBook.pages = 400
    println(myBook.isLongBook()) // Output: true
}
```

> 💡 Methods let objects perform actions or compute values based on their properties.

---

## Practice

Complete the method to calculate area:

```kotlin
class Circle {
    var radius: Double = 0.0
    
    ??? calculateArea(): Double {
        ??? 3.14 * radius * radius
    }
}
```

- `fun`
- `return`
- `function`
- `print`
