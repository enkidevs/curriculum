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
---

# Why Use Constants?

---
## Content

Constants are help you with code:

- Prevent accidental changes to important values
- Make it obvious which values should not change
- Ensure important values remain fixed forever

If you try to change a constant, Swift will give you an error:

```swift
let pi = 3.14159 // Declared as a constant

// Later in the code:
pi = 3.14 // Error! Cannot assign to a constant.
```

---
## Practice

What happens if you try to change a constant in Swift?

???

- Swift gives you an error
- Nothing, it's fine

---
## Revision

Which of the following is a benefit of using constants in Swift?

???

- They prevent accidental changes to values.
- They allow dynamic changes to critical values
