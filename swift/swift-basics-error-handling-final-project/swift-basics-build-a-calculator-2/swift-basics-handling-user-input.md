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

# Handling User Input

---
## Content

Capturing user input in Swift is like having a conversation with your app. You ask for information, and the user responds.

- Use `readLine()` to get input from the user.
- Convert the input to a number using `Double()`.
- Use optional binding to safely handle the input.

```swift
print("Enter a number:")
if let input = readLine(), let number = Double(input) {
    print("You entered: \(number)")
} else {
    print("Invalid input.")
}
```

---
## Practice

What function is used to capture user input in Swift?

???

- readLine()
- input()
- getInput()

---
## Revision

What is the purpose of optional binding in Swift?

???

- To safely handle optional values
- To convert strings to numbers
- To perform arithmetic operations
