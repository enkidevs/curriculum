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



links:


---

# Real-World Guard Example

---
## Content

Imagine you're building a registration form. Use a guard statement to ensure all fields are filled:

```swift
func registerUser(name: String?, email: String?) {
    guard let name = name, !name.isEmpty, let email = email, !email.isEmpty else {
        print("All fields are required.")
        return
    }
    print("Registration successful for \(name)!")
}
```

This ensures that both `name` and `email` are provided and not empty before proceeding.


---
## Practice

In the `registerUser` function, what happens if `name` or `email` is empty?

???

- The function prints a message and exits
- The function continues execution
- The function throws an error


---
## Revision

What does the guard statement in `registerUser` check for?

???

- That both name and email are provided and not empty
- That the email is valid
- That the name is unique


---
## Footnotes


