---
author: enki-ai
type: normal
category: feature
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Extension Properties ✨

---
## Content

**Extension properties** allow you to add new properties to existing classes, similar to extension functions but for properties.

Here's an example:

```kotlin
val String.lastChar: Char
    get() = this[this.length - 1]

val last = "Kotlin".lastChar
println(last) // Outputs: n
```

**`String.lastChar`**: Adds a new property to the `String` class.

- **`get()`**: Defines how to retrieve the property value.

---
## Practice

How would you define an extension property `firstChar` for the `String` class that returns the first character?

```kotlin
val String.firstChar: Char
    ???
```

- `get() = this[0]`
- `get() this[0]`
- `get() = this.lastChar`

---
## Revision

What is an extension property in Kotlin?

A) A property that modifies the original class.

B) A property that adds new attributes to existing classes without altering their source code.

C) A property that deletes existing attributes from a class.

???

- `B`
- `A`
- `C`
