---
author: nemanjaenki

category: tip

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

# Implicit vs. Explicit Types

---
## Content

If you don’t specify a type for a variable or constant, Swift will automatically determine the type for you. 

The fancy name for this process is **type inference**.

> 💡 A variable without a written type has an **implicit** type.

 ```swift
  let implicitInteger = 70 // Swift knows it's an Int
//                             ^ no type here
  ```

On the other hand, you can specify the type yourself to make it crystal clear:

> 💡 A variable with a written type has an **explicit** type.

  ```swift
  let explicitDouble: Double = 70 // Ensures it's a Double
  ```

> 💡 Tip: Use explicit types when you want to clarify the kind of data you’re working with, especially when it might not be obvious or when precision is important.

---
## Practice

What kind of type do these variables have?

```swift
let numberOfPages = 300 // ???
let firstName: String = "Enki" // ???
```

- implicit type
- explicit type

---
## Revision

What type does Swift infer for the following declaration?

```swift
let implicitValue = 42
```

???

- Int
- Double
- String


---
## Footnotes


