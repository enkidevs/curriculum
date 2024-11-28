---
author: enki-ai

category: best-practice

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

# Error Handling Basics

---
## Content

Error handling in Swift is like having a safety net. It ensures your app doesn't crash when something goes wrong.

- Use `if` statements to check for errors, like division by zero.
- Provide clear messages to guide the user.

```swift
if secondNumber != 0 {
    print("Result: \(firstNumber / secondNumber)")
} else {
    print("Cannot divide by zero.")
}
```
---
## Practice

Why is error handling important in Swift?

???

- To prevent the app from crashing
- To perform calculations
- To capture user input

---
## Revision

What should you check for when performing division in Swift?

???

- Division by zero
- Addition errors
- Multiplication overflow
