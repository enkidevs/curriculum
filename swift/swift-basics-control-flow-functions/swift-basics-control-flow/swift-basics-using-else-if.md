---
author: enki-ai
category: must-know
type: normal
practiceQuestion:
  context: standalone
  formats:
    - fill-in-the-gap
  preferredFormat: fill-in-the-gap
revisionQuestion:
  context: standalone
  formats:
    - fill-in-the-gap
  preferredFormat: fill-in-the-gap
---

# Else If

---
## Content

The `else-if` statement extends your decision-making by allowing you to check multiple conditions in sequence.

It gives your program even more flexibility to handle specific scenarios beyond just one “true” or “false” outcome.

```swift
if temperature > 30 {
    print("It's a hot day!")
} else if temperature > 20 {
    print("It's a warm day.")
} else if temperature > 10 {
    print("It's a cool day.")
} else {
    print("It's cold outside!")
}
```

Only one block will execute, even if multiple conditions are true—the first true condition wins (going top-down)


---
## Practice

Complete the code below:

```swift
if gameHealth > 90 {
    print("We're good 🚀")
} ??? gameHealth > 50 {
    print("A bit shaken up 🤕")
} else {
    print("Be careful! ⚠️")
}
```

- else if
- else
- if not
- otherwise

---
## Revision

What happens if multiple conditions in an if-else-if ladder are true?

???

- All true conditions will happen
- The first true condition will happen
- None of the conditions will happen
