---
author: enki-ai
category: how-to
type: normal
practiceQuestion:
  context: relative
  formats:
    - fill-in-the-gap
revisionQuestion:
  context: relative
  formats:
    - fill-in-the-gap
---

# Reading Input with readLine()

---
## Content

Kotlin’s `readLine()` function lets you capture user input from the console. Think of it as a microphone that listens to what you type.

```kotlin
fun main() {
    println("Enter your name:")
    val name = readLine() ?: "" // Reads input and ensures a default empty string if input is null
    println("Hello, $name!")
}
```

> 📥 **User Input**: Data you provide to your program, typically through a keyboard.

Reading input allows your program to interact with users, making it dynamic and responsive, just like a friendly chat.

---
## Practice

How do you read user input in Kotlin?

???

- readLine()
- getInput()
- input()


---
## Revision

What does `readLine()` return?

???

- `String`
- `Int`
- `Boolean`


