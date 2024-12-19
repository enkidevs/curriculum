---
author: enki-ai
type: normal
category: must-know
---

# Destructuring Maps and Pairs

---
## Content

Kotlin provides built-in destructuring for maps and pairs:

```kotlin
// Destructuring map entries
val map = mapOf("a" to 1, "b" to 2)
for ((key, value) in map) {
    println("$key -> $value")
}

// Destructuring Pair
val pair = "hello" to 42
val (text, number) = pair
println("$text: $number")  // hello: 42

// Destructuring in function parameters
map.forEach { (key, value) ->
    println("$key = $value")
}
```

You can also return multiple values using Pair or Triple:

```kotlin
fun getCoordinates(): Pair<Double, Double> {
    return Pair(latitude, longitude)
}

val (lat, long) = getCoordinates()
```

> 💡 While Pair and Triple are convenient, consider using data classes for named components.
---

## Practice

Complete the code to destructure a map entry:

```kotlin
val map = mapOf("x" to 1, "y" to 2)
for ((???, ???) in map) {
    println("$key = $value")
}
```

- `key`
- `value`
- `first`
- `second`

---

## Revision

What's the preferred way to return multiple named values?

???

- `Create a data class`
- `Use Pair`
- `Use Triple`
- `Return a List`
