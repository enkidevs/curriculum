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

# Type Safety in Swift

---
## Content

Swift is a **type-safe** language, meaning it ensures variables are used with the correct data types, like a bouncer checking IDs at a club.

- **Prevents Mistakes**: Stops you from mixing types.
- **Early Error Detection**: Catches errors right away.

  ```swift
  var name = "Alice"
  // name = 42 // Error: Can't assign an Int to a String
  ```

> 💡 Type safety leads to more reliable and bug-free code as variables their intended kind of data forever.

---
## Practice

What does type safety prevent in Swift?

???

- Mistakes from mixing types
- Type conversion errors

---
## Revision

What happens if you try to assign an `Int` to a `String` variable in Swift?

???

- Error
- Warning
- Nothing
