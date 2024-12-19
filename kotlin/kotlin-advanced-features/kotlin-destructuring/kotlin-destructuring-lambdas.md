---
author: enki-ai
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Destructuring in Lambdas

---
## Content

You can use destructuring declarations in lambda parameters:

```kotlin
// Map transformation with destructuring
val map = mapOf("one" to 1, "two" to 2)
map.mapValues { (key, value) ->
    "$key -> $value!"
}

// Different ways to declare lambda parameters
map.forEach { entry -> println(entry) }           // single parameter
map.forEach { (key, value) -> println("$key") }  // destructured pair
map.forEach { (_, value) -> println(value) }     // destructuring with skip
```

You can also specify types in destructuring declarations:

```kotlin
map.mapValues { (key: String, value: Int) ->
    "$key -> $value!"
}

// Or type for the entire entry
map.mapValues { entry: Map.Entry<String, Int> ->
    "${entry.key} -> ${entry.value}!"
}
```

> 💡 Use destructuring in lambdas when working with pairs or entries to make code more readable and concise. It's especially useful when dealing with maps and pairs.

---

## Practice

Complete the lambda with destructuring:

```kotlin
val pairs = listOf(1 to "one", 2 to "two")
pairs.forEach { (???, ???) ->
    println("$number in English is $word")
}
```

- `number`
- `word`
- `first`
- `second`

---

## Revision

What's the difference between these lambdas?

```kotlin
{ a, b -> }     // 1
{ (a, b) -> }   // 2
```

???

- `1 has two parameters, 2 has a destructured pair parameter`
- `They are exactly the same`
- `1 is invalid syntax`
- `2 is invalid syntax`
