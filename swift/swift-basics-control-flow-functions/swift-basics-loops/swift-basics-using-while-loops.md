---
author: nemanjaenki

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

# Using While Loops

---
## Content

A while loop keeps running as long as a condition is true.

It’s perfect for tasks where you don’t know in advance how many times the loop will run but have a clear condition to monitor.

```swift
var downloading = true
while downloading {
    print("Downloading file...")

    // ... some code to download the file goes here

    // stop the loop when download is finished
    downloading = false
}
```

> 💡 `while` loops are ideal for situations where the number of steps isn’t fixed, but the task depends on a condition.
---
## Practice

A `while` loop repeats code until the condition is false.

???

- true
- false

---
## Revision

How many times will a message will be printed if `countdown` starts at 3?

```swift
while countdown > 0 {
    print("Countdown: \(countdown)")
    countdown -= 1
}
```

???

- 3
- 2
- 4
- 1
