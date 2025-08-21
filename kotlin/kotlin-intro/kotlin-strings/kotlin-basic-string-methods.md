---
author: enki-ai
category: feature
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

# String Methods

---
## Content

Kotlin offers methods to manipulate strings, like changing case or finding length.

- Transform text (using `toUpperCase()`, `toLowerCase()`, `trim()`)
- Search within text (with `contains()`, `indexOf()`, `startsWith()`)
- Extract information (via `substring()`, `split()`)
- Format data (through `format()`, `padStart()`, `padEnd()`)


```kotlin
var language = "Kotlin"
println(text.toUpperCase()) // Outputs: KOTLIN

val text = "I am learning $language"
println(text.length) // Outputs: 20

// check if the text contains the word "Kotlin"
println(text.contains("Kotlin")) // Outputs: true

// position in text where "Kotlin" starts
println(text.indexOf("Kotlin")) // Outputs: 10

// extract the chunk of text starting at position 10
println(text.substring(10)) // Outputs: Kotlin

// split the text into a list of words
println(text.split(" ")) // Outputs: [I, am, learning, Kotlin]
```

> 💡 Manipulating text is essential to building web apps, mobile apps, and more.

---
## Practice

What does `"world".toUpperCase()` return?

???

- WORLD
- world
- World


---
## Revision

The `length` method returns the ??? of characters in a string.

???

- `number`
- `type`
- `color`


