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

# Unwrapping Optionals Safely

---
## Content

To use the value inside an optional, you need to **unwrap** it. This is like opening a gift box to see what's inside.

You can safely unwrap an optional using `if let`:

```swift
if let unwrappedGift = gift {
    print("Gift is: \(unwrappedGift)")
} else {
    print("No gift found")
}
```

This checks if `gift` has a value. If it does, it assigns it to `unwrappedGift` and uses it.


---
## Practice

How do you safely unwrap an optional in Swift?

???

- Using if let
- Using var
- Using func


---
## Revision

What does the following code do?

```swift
if let value = optionalValue {
    print(value)
}
```

???

- Safely unwraps the optional and prints the value if it exists
- Declares a new optional
- Throws an error if the optional is nil


---
## Footnotes


