---
author: nemanjaenki

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

# String Interpolation

---
## Content

Swift lets you easily include values in text.

Each value you want to include, you can write them directly in your text using `\()`.

For example:

```swift
let appleCount = 10
let appleSummary = "I have \(appleCount) apples."
print(appleSummary) // "I have 10 apples"
```

And you can include any value into text like this:

```swift
var name = "Enki"
var job = "teaching you Swift"
print("I am /(name) and I'm /(job)") // I am Enki and I'm teaching you Swift
```

> **Tip**: The fancy name for adding values inside text is **string interpolation**
---
## Practice

Complete the code to say "I love Swift":

```swift
let who = "Swift"
print("I love \(???)!")
```

- who
- Swift
- swift
- enki

---
## Revision

Adding values into text is called ???

```swift
var name = "Enki"
var job = "teaching you Swift"
print("I am /(name) and I'm /(job)") // I am Enki and I'm teaching you Swift
```

- string interpolation
- text value adding
- text insertion
- string manipulation
