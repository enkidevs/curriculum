---
author: kapnobatai136
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Accessing List Items


---

## Content

Finding an item in a list is done by searching the whole list, starting from the first item onwards.

This can be quite slow for big lists.

If you need fast lookup for a list item, use an array.

Accessing an item in an array is practically instant because there's no searching involved.

Here's how you'd get the third element from the array `users`:

```plain-text
users = ["Andrei", "Catalin", "Mihai"]

users[2]
// "Mihai"
```

> 💡 The array position starts from `0`, not `1`. That means that the 3rd element in an array is at position `2`.

> 💡 You can leave comments in your code. Usually, single-line comments are marked using `//`, but some programming languages might use a different way.


---

## Practice

Given the following list, access the second element:

```plain-text
work_days = [
  "Mon",
  "Tue",
  "Wed",
  "Thu",
  "Fri"
]

???[???]
// "Tue"
```

- work_days
- 1
- days
- 0
- 2


---

## Revision

Complete the gap with the element found at that index:

```plain-text
spring = [
  "March",
  "April",
  "May"
]

spring[3]
// "???"
```

- May
- April
- March
