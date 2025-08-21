---
author: enki-ai
category: feature
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

# Real-World Example

---
## Content

Imagine you're building a registration form. You can use optional binding to ensure the user enters a valid email address:

```swift
print("Enter your email:")
if let email = readLine(), email.contains("@") {
    print("Email accepted.")
} else {
    print("Invalid email. Please try again.")
}
```

> **Tip**: Always validate user input to ensure your program runs smoothly and securely.

---
## Practice

In the email validation example, the program checks if the email contains ???.

- @
- .com
- $

---
## Revision

Validating user input helps ensure your program runs ???.

- smoothly
- slowly
- erratically
