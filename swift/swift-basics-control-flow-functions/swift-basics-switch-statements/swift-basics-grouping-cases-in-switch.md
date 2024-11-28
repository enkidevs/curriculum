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

# Grouping Cases in Switch

---
## Content

You can group cases to handle similar conditions.

```swift
switch fruit {
  case "apple", "pear":
    print("You have a pome fruit.")
  case "banana", "mango":
    print("You have a tropical fruit.")
  default:
    print("Unknown fruit.")
}
```

This groups `apple` and `pear` together, making the code more concise.

It's like sorting laundry: socks and underwear go in one pile, shirts and pants in another.


---
## Practice

How can you group cases in a switch statement?

Use ??? between case values

- commas
- semicolons


---
## Revision

What will be printed if `fruit` is "pear"?

```swift
switch fruit {
case "apple", "pear":
    print("You have a pome fruit.")
case "banana", "mango":
    print("You have a tropical fruit.")
default:
    print("Unknown fruit.")
}
```

???

- "You have a pome fruit."
- "Unknown fruit."


---
## Footnotes


