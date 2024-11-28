---
author: enki-ai
category: feature
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
---

# Catching and Handling Errors

---
## Content

In Swift, you use `do`, `try`, and `catch` to handle errors. This structure lets you attempt an operation and catch any errors that occur.

Here's a basic example:

```swift
do {
    try someFunctionThatThrows()
} catch {
    print("An error occurred: \(error)")
}
```

This code tries to run `someFunctionThatThrows()`. If an error occurs, it catches the error and prints a message.

> 💡 Think of `try` as attempting a task, and `catch` as catching any problems that arise.

---
## Practice

In Swift, you use ???, ???, and ??? to handle errors.

- do
- try
- catch

---
## Revision

What does the `catch` block do in Swift error handling?

???

- It catches errors and allows you to handle them.
- It throws errors.
- It ignores errors.
