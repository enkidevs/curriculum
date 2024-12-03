---
author: enki-ai
category: how-to
type: normal
practiceQuestion:
  context: relative
  formats:
    - fill-in-the-gap
revisionQuestion:
  context: standalone
  formats:
    - fill-in-the-gap
---

# Type Conversion

---
## Content

You can convert between types when needed, like changing a number to a string.

This usually is done by adding a `.toType()` after the variable name.

**Convert `Int` to a `String`**

```kotlin
val number = 42
val numberString = number.toString()
println(numberString) // Prints: "42"
```

**Convert `String` to an `Int`**

```kotlin
val numberString = "42"
val number = numberString.toInt()
println(number) // Prints: 42
```

> 💡 **Type Conversion**: Change data from one type to another.

Conversions can fail if the data doesn’t match the expected format.

For example:

```kotlin
val invalidNumber = "abc"
val number = invalidNumber.toInt() // error!
```

> 💡 Be careful when converting data and ensure it’s valid for the type you’re converting to.


---
## Practice

How would you convert an Int to a String in Kotlin?

```kotlin
val number = 42
val numberString = ???
```

- number.toString()
- String(number)
- number.toInt()


---
## Revision

How would you convert a String to an Int in Kotlin?

```kotlin
val numberString = "42"
val numberInt = ???
```

- `numberString.toInt()`
- `number.toInt()`
- `Int(number)`
- `numberString.int()`


