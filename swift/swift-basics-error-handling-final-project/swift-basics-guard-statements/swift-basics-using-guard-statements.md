---
author: enki-ai

category: how-to

type: normal

practiceQuestion:
  context: relative
  formats:
    - fill-in-the-gap
  preferredFormat: fill-in-the-gap


revisionQuestion:
  context: relative
  formats:
    - fill-in-the-gap
  preferredFormat: fill-in-the-gap



links:
---

# Using Guard Statements

---
## Content

🚀 A **guard statement** checks a condition and exits the current scope if the condition is not met.

#### Basic Structure

- **Syntax**: Use `guard` followed by a condition and an `else` block.
  ```swift
  func checkAge(age: Int?) {
      guard let age = age, age >= 18 else {
          print("You must be at least 18 years old.")
          return
      }
      print("Welcome!")
  }
  ```
  This function checks if `age` is not `nil` and at least 18. If not, it exits early with a message.
---
## Practice

What does the `else` block in a guard statement do?

???

- Executes if the condition is not met
- Executes if the condition is met
- Declares a new variable

---
## Revision

In the function `checkAge`, what happens if `age` is less than 18?

???

- The function prints a message and exits
- The function continues execution
- The function throws an error
