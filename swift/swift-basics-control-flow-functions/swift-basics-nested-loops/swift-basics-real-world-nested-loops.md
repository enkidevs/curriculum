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
  context: standalone
  formats:
    - fill-in-the-gap
  preferredFormat: fill-in-the-gap



links:


---

# Real-World Nested Loops

---
## Content

Here's how you might build a seating chart for a theater:

```swift
let rows = 3
let columns = 4
for row in 1...rows {
    for column in 1...columns {
        print("Seat: Row \(row), Column \(column)")
    }
}
```

This will print a seat number for each position in the theater:

```
Row 1, Column 1
Row 1, Column 2
...
Row 2, Column 1,
Row 2, Column 2,
...
```

---
## Practice

How many times will the inner loop run if there are 3 rows and 4 columns?

```swift
for row in 1...rows {
    for column in 1...columns {
        print("Seat: Row \(row), Column \(column)")
    }
}
```

???

- 12
- 7


---
## Revision

Imagine you’re building a social media app, and you want to display a post’s comments along with their replies. 

A ??? for loop is perfect for iterating through each comment and its associated replies.

- nested
- single


---
## Footnotes


