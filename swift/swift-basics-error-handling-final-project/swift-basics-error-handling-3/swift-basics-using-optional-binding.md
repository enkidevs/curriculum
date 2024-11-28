---
author: enki-ai

category: must-know

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

# Using Optional Binding

---
## Content

**Optional binding** is a way to check if an optional contains a value and use it if it does.

Think of it like checking if a light switch is on before entering a room. If it's on, you proceed; if not, you handle it differently.

Here's how you use optional binding:

```swift
if let actualGift = gift {
    print("Received: \(actualGift)")
} else {
    print("No gift available")
}
```

This code checks if `gift` has a value and uses it if available.
---
## Practice

What is optional binding used for in Swift?

???

- To check if an optional contains a value and use it if it does
- To declare a new optional
- To convert an optional to a string

---
## Revision

In optional binding, what happens if the optional is nil?

???

- The else block is executed
- The program crashes
- The optional is automatically unwrapped
