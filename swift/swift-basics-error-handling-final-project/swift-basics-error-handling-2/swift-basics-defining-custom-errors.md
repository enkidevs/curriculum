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

# Defining Custom Errors

---
## Content

In Swift, you can create your own errors by defining an `enum` that conforms to the `Error` protocol. This allows you to specify different error cases for your app.

Here's an example:

```swift
enum FileError: Error {
    case fileNotFound
    case unreadable
    case encodingFailed
}
```

This `enum` defines three possible errors related to file handling.

> 💡 Think of custom errors as labels you create to describe specific problems in your app.


---
## Practice

How do you define custom errors in Swift?

???

- Using an enum that conforms to the Error protocol
- Using a class that inherits from Error
- Using a struct that conforms to the Error protocol


---
## Revision

What does the following code define?

```swift
enum NetworkError: Error {
    case timeout
    case noConnection
}
```

???

- Custom errors for network issues
- A function that throws errors
- A variable that stores errors


---
## Footnotes


