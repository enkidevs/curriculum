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

# Extension Functions 🚀

---
## Content

**Extension functions** let you add new features to existing classes without altering their source code. 

Imagine adding a new feature to your favorite app without changing the app itself. 

Here's how you create one:

```kotlin
fun String.isPalindrome(): Boolean {
    return this == this.reversed()
}

val result = "level".isPalindrome()
println(result) // Outputs: true
```

**`String.isPalindrome()`**: Adds a new function to the `String` class.

**`this`**: Refers to the instance of the class being extended.
  
---
## Practice

How would you create an extension function `isUpperCase` for the `String` class that checks if all characters are uppercase?

```kotlin
fun String.isUpperCase(): Boolean {
    return ???
}
```

???

- `this == this.toUpperCase()`
- `this == this.toLowerCase()`
- `this.isEmpty()`

---
## Revision

What is an extension function in Kotlin?

A) A function that modifies the original class by extending it with new functionality.

B) A function that adds new functionality to existing classes without modifying their source code.

C) A function that deletes existing methods from a class.

???

- `B`
- `A`
- `C`

