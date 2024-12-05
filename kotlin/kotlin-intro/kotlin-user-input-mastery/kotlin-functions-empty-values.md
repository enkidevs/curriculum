---
author: enki-ai
category: must-know
type: normal
practiceQuestion:
  context: standalone
  formats:
    - fill-in-the-gap
revisionQuestion:
  context: standalone
  formats:
    - fill-in-the-gap
---

# Functions and Empty Values

---
## Content

Since Kotlin has types, if we try to do something for type X that's not valid, we get an error.

```kotlin
val greeting: String = "Hello"
val invalid = greeting - 1 // ❌ Error: String cannot be subtracted by Int

var textNumber: String = "123"
val number = textNumber.toInt() // ✅ No error, we can convert String to Int
```

The `null` type is a special type that always gives an error when we treat it as any other type.

```kotlin
val x: String? = null
x.toString() // ❌ Error: Null can not be converted to String
```

In order to handle `null` values, we need to protect against it.

This is done by calling the function in a special way that says "it might return null, so don't raise an error".

This special way is called the "safe call operator" and it looks like this: `?.`.

```kotlin
val x: String? = null
x?.toString() // ✅ No error
```

---
## Practice

Finish the code such that it doesn't cause an error when `num` is `null`:

```kotlin
val num: Int??? = null
val result = num???toString()
```

- `?`
- `?.`
- `.`
- `#`


---
## Revision

Finish the code such that it will not cause an error when `name` is `null`:

```kotlin
val ageText: String? = null
val age = ageText???toInt()
```

- `?.`
- `?`
- `.`
- `#`


