---
author: enki-ai
category: how-to
type: normal
practiceQuestion:
  context: relative
  formats:
    - fill-in-the-gap
revisionQuestion:
  context: relative
  formats:
    - fill-in-the-gap
---

# Practice with Nested Loops

---
## Content

Nested loops make it easy to tackle multi-layered tasks, like generating a multiplication table from 1 to 3.

Example output:

```swift
1 x 1 = 1
1 x 2 = 2
1 x 3 = 3
---
## 2 x 1 = 2 2 x 2 = 4 2 x 3 = 6

## 3 x 1 = 3 3 x 2 = 6 3 x 3 = 9

````
Here's code that can get you started:

```swift
for row in 1...X {
    for column in 1...X {
        // hint, use string interpolation and multiplication here
    }
    print("---") // Separates each row for clarity
}
````

> Leave a comment with your answer or view others for inspiration.


---
## Practice

Finish the code to create a multiplication table from 1 to 5:

```swift
for row in 1...5 {
    for column in 1...5 {
        print(???)
    }
    print("---") // Separates each row for clarity
}
```

- "\(row) x \(column) = \(row * column)"
- "row x column = \(row * column)"
- "row x column = row * column"
---
## Revision

Finish the code to create a multiplication table from 1 to 9:

```swift
for row in 1...9 {
    for column in 1...9 {
        print(???)
    }
    print("---") // Separates each row for clarity
}
```

This table will have ??? rows.

- "\(row) x \(column) = \(row * column)"
- 81
- 9
- 99
- "row x column = \(row * column)"
- "row x column = row * column"
