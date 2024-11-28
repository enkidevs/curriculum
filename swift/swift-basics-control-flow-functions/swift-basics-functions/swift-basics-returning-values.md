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

# Returning Values

---
## Content

Functions can also return values, providing results back to the caller.

Here's a function that adds two numbers and returns the result:

```swift
func addNumbers(a: Int, b: Int) -> Int {
    return a + b
}
```

- **`-> Int`**: This indicates the function returns an `Int`.
- **`return`**: This keyword sends the result back to where the function was called.

Use the function and capture the result:

```swift
let sum = addNumbers(a: 5, b: 3)
print(sum) // Prints: 8
```

---
## Practice

What does the `-> Int` part of a function indicate?

???

- The function returns an Int
- The function takes an Int as input

---
## Revision

What will be the result of the following code?

```swift
func addNumbers(a: Int, b: Int) -> Int {
    return a + b
}

let result = addNumbers(2, 3)
```

???

- 5
- 6
