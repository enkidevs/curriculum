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

# Optional Binding in Swift

---
## Content

🚀 **Optional Binding** is a technique in Swift that lets you safely unwrap optional values, ensuring they contain valid data before use.

#### How to Use Optional Binding

- **Basic Structure**: Check if an optional contains a value and use it safely.
  ```swift
  print("Enter your age:")
  if let ageInput = readLine(), let age = Int(ageInput) {
      print("Your age is \(age)")
  } else {
      print("Invalid input. Please enter a number.")
  }
  ```
  This code checks if the user input can be converted to an `Int` and handles invalid input gracefully.
---
## Practice

Optional binding helps you safely ??? optional values.

- unwrap
- wrap
- ignore

---
## Revision

Complete the code to safely unwrap an optional:

```swift
if let ageInput = readLine(), let age = ???(ageInput) {
    print("Your age is \(age)")
}
```

- Int
- String
- Double
