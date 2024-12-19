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

# Secondary Constructors

---
## Content

Secondary constructors provide alternative ways to create class instances:

```kotlin
class Book(
    val title: String,
    val author: String
) {
    var pages: Int = 0
    var isbn: String = ""
    
    // Secondary constructor
    constructor(title: String, author: String, pages: Int) : this(title, author) {
        this.pages = pages
    }
    
    // Another secondary constructor
    constructor(isbn: String) : this("Unknown", "Unknown") {
        this.isbn = isbn
        fetchBookDetails(isbn)  // Hypothetical function
    }
}

fun main() {
    val book1 = Book("Kotlin", "John Doe")
    val book2 = Book("Kotlin", "John Doe", 200)
    val book3 = Book("123-456-789")
}
```

> 💡 Secondary constructors:
> - Must call the primary constructor using `this()`
> - Can have different parameter lists
> - Can contain initialization logic
> - Are useful for different initialization patterns

---
## Practice

Complete the secondary constructor:

```kotlin
class User(val name: String) {
    var email: String = ""
    
    ??? (email: String) : ???(???) {
        this.email = email
    }
}
```

- `constructor`
- `this`
- `"Unknown"`
- `init`
- `super`
- `name`

---
## Revision

Secondary constructors must:

???

- `Call the primary constructor using this()`
- `Have different parameter names`
- `Be declared first`
- `Return a value` 