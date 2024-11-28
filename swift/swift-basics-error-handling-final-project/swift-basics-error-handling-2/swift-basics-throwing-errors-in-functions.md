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

# Throwing Errors in Functions

---
## Content

In Swift, functions that might encounter problems are marked with `throws`. This indicates that the function can throw an error during execution.

Here's how you define a throwing function:

```swift
func readFile(at path: String) throws -> String {
    // Code that might throw an error
}
```

When calling this function, you must use `try` to handle potential errors.

> 💡 Marking a function with `throws` is like putting a warning sign that it might encounter issues.
---
## Practice

What keyword marks a function that can throw errors?

???

- throws
- catch
- error

---
## Revision

How do you indicate a function might throw an error in Swift?

???

- By using the throws keyword
- By using the catch keyword
- By using the error keyword
