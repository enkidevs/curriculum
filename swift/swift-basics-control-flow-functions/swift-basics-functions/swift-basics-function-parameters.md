---
author: nemanjaenki

category: feature

type: normal

practiceQuestion:
  context: standalone
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

# Function Parameters

---
## Content

Parameters let you pass information into a function, making it more flexible.

Here's a function that greets a specific user:

```swift
func greetUser(name: String) {
    print("Hello, \(name)!")
}
```

- **`name: String`**: This parameter lets you pass a `String` into the function.

Call the function with a name:

```swift
greetUser("Enki") // Prints: Hello, Enki!
```

> This is how `print` works. It accepts a `String` parameter and shows it on the screen: `print("Hello!")
---
## Practice

Finish the code to greet the user by name:

```swift
??? greetUser(???) {
    print("Hello, \(name)!")
}
```

- func
- function
- name: String
- name: Text

---
## Revision

What will be printed by the following code?

```swift
func greetUser(name: String) {
    print("Hello, \(name)!")
}
greetUser("Bob")
```

???

- Hello, Bob!
- Hello Bob!
- Hello, Bob
